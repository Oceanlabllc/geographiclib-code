/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: ahnise
 *
 * Created on January 25, 2017, 1:04 PM
 */

      #include <sys/types.h>
      #include <sys/stat.h>
      #include <fcntl.h>
      #include <unistd.h>
      #include <termios.h>
      #include <iostream>
      #include <stdio.h>
      #include <cstdlib>
      #include <strings.h>
      #include <time.h> //nanosleep
      #include <clsJsonServer.h>

      #include "clsSwarm_WAMV.h"
    //  #include "clsControl_RCDataDiver.h"
      #include "sleep.h"

    #include "clsSerial_Xbee.h"
    #include "clsSerial_Xbee.h"
    #include <sys/wait.h>
    #include <sys/types.h>
    #include <csignal>
    #include <signal.h>


void exiting() {
    std::cout << "Exiting" << std::endl;
    int status;
  //  waitpid(-1,&status,0);
    
    while(1){ 
    pid_t ret = waitpid(-1,&status,0);

    if(ret>0)
    {
        if(WIFEXITED(status))
        {
           if(WEXITSTATUS(status) == 0)
           { 
               printf("child process terminated normally and successfully\n");
           }
           else
           {
               printf("child process terminated normally and unsuccessfully\n");
           }
         }
        else{ 
               printf("child process terminated abnormally and unsuccessfully\n");
            }
        }
        if(ret<0) break;
    }
    std::cout << "Exit Complete" << std::endl;
    abort();
}


void my_handler(int s){
           printf("Caught signal %d\n",s);          
           exit(0);
}
      
        
      
    
    using namespace std;
    
    clsSwarm_WAMV swarmO;
    clsJsonServer serverO;
    
   // clsControl_RCDataDiver rcControlO;
    
    
        
    volatile int STOP=FALSE; 
       
      main(int argc, char** argv)
      {
          
        std::atexit(exiting);
        signal(SIGCHLD,SIG_IGN);
        
        
        struct sigaction sigIntHandler;

        sigIntHandler.sa_handler = my_handler;
        sigemptyset(&sigIntHandler.sa_mask);
        sigIntHandler.sa_flags = 0;

        sigaction(SIGINT, &sigIntHandler, NULL);        
        
        
        
          /*
          rcControlO.begin("/dev/ttyUSB1",115200);   
          rcControlO.connectToVehicle(19);
          rcControlO.setImuVector(45,50);    
         
          
          for (;;)
          {
            rcControlO.tickle();       
            sleep(1);
          }
          
          */
        
        time_t timeNow;
        time(&timeNow);
        struct tm *now = localtime(&timeNow);
        
        
        cout << "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" <<endl;
        cout << "& BRIDGE WAMV" <<endl;
        cout << "&  VERSION 0.0.0" <<endl;
        cout << "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" <<endl;
        cout << "STARTUP IN PROGRESS" << endl;
        cout << asctime(now) << endl;
          
          int packetCount = 0;
          if (!swarmO.begin((basJsonServer_Callbacks *)&serverO,"239.255.0.1"))
          {
              cout << "Error swarmO.begin." <<endl;
              return -1;
          }  
          
          if (serverO.begin(&swarmO) != clsJsonServer::retVal_SUCCESS)
          {
              cout << "Error serverO.begin." <<endl;
              return -1;
          }
          
          cout << "startup complete" << endl;
          
          try
          {             
            for (;;)
            {
                swarmO.tickle();   
                serverO.tickle();
                sleep_ms(10);
            }
          }
          catch(int e)
          {
              cout << "Unhandled Exception Found In Main:" << std::to_string(e) << endl;
              exit(1);
          }
          
      }