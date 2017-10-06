/** 
 * @file main.cpp
 * @author Alan Nise
 * @date 
 * 
 * @breif 
 *   Holds main function which is the code entry point for the project.
 * @copyright 2017 Apium Inc., All Rights Reserved.
 * 
 */


/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& INCLUDES
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
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

    #include "clsSwarm_WAMV_LocalBridge.h"
    #include "clsSwarm_WAMV_RemoteBridge.h"
    #include "clsSwarm_WAMV_Sim.h"

    #include "clsSwarm_DataDiver.h"
    #include "clsSwarm_DataDiver_Sim.h"
    #include "clsSwarm_DataDiver_LocalBridge.h"
    #include "clsSwarm_DataDiver_RemoteBridge.h"
    #include "clsSwarm_DD_FullSim.h"

    #include "sleep.h"

    #include "clsSerial_Xbee.h"
    #include "clsSerial_Xbee.h"

    #include <sys/wait.h>
    #include <sys/types.h>
    #include <csignal>
    #include <signal.h>

    #include <boost/property_tree/ptree.hpp>
    #include <boost/property_tree/ini_parser.hpp>

/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& USING
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/ 
    using namespace std;        
    
/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& TYPES
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/             
    
    typedef struct 
    {
        string mode;        
        std::string swarmDestIP;
        std::string swarmHostIP;
        uint16_t swarmPort;        
        std::string localIP;
        uint16_t localPort;        
        std::string remoteIP;
        uint16_t remotePort;
        uint8_t vehicles; 
        double originlat;
        double originlon;
        double tabletlat;
        double tabletlon;
        
    }config_s;
    
/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& MODULE VARIABLES
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/         
    basSwarm *_pSwarmO;
    clsJsonServer _serverO;
/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& MACROS
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/ 

/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& FUNCTION PROTOTYPES
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/   
                   
    void exiting();
      /**<  Function called asynchronously by operating system if the 
       * application exits for any reason. This was added primarily
       * to insure any sub processes are properly shut down.      
       */ 
              
    void my_handler(int s);
        /**< Signal Handler. Any time a signal (such as SIGTERM caused by control C)
         * is triggered, this function is called by the OS          
         * 
         * @param s
         * Id number of the signal as passed by the OS.                          
         */
              
    bool setupSwarmObject(config_s &cfg);  
        /**< Instantiates the proper swarm object based on selected configuration.
         * The application is designed to work as either a remote or local bridge
         * based on what the use enters as a command line parameter. This function
         * detects the desired configuration based on the text of the command 
         * line parameter and then 
         * 
         * @param configuration
         *      
         * 
         * @return                                  
         *      True if success, FALSE if failued to create swarm object.
         */
    
/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& MAIN IMPLEMENTATION
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/        
    /**
     * Entry function which runs at startup. Program starts here.
     * @param argc
     *  The number of parameters. This will be one plus the number
     * of entries on the command line.
     * 
     * More useful information may be found at the following link: 
     * 
     * <a href="https://stackoverflow.com/questions/204476/what-should-main-return-in-c-and-c"> what-should-main-return-in-c-and-c </a>     
     * @param argv
     * An array of pointers to strings. Element 0 will be the 
     * name of the program where the remaining will be the command line
     * parameters
     * 
     * @return
     * 0 if success. Other values indicate an error code. 
     */
    main(int argc, char** argv) 
    {
          
        //---------------------------------------------------
        // SETUP SIGNAL AND EXIT HANDLING
        //---------------------------------------------------        
        std::atexit(exiting);
        signal(SIGCHLD,SIG_IGN);
                
        struct sigaction sigIntHandler;

        sigIntHandler.sa_handler = my_handler;
        sigemptyset(&sigIntHandler.sa_mask);
        sigIntHandler.sa_flags = 0;

        sigaction(SIGINT, &sigIntHandler, NULL);        
        
        
        //---------------------------------------------------
        // PRINT STARTUP BANNER
        //---------------------------------------------------
        time_t timeNow;
        time(&timeNow);
        struct tm *now = localtime(&timeNow);
                
        cout << "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" <<endl;
        cout << "& BRIDGE WAMV" <<endl;
        cout << "&  VERSION 0.0.5" <<endl;
        cout << "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" <<endl;
        cout << "STARTUP IN PROGRESS" << endl;
        cout << asctime(now) << endl;
        
        //---------------------------------------------------
        // READ CONFIG FILE
        //---------------------------------------------------       
        boost::property_tree::ptree pt;
        boost::property_tree::ini_parser::read_ini("config.ini", pt);
        config_s cfg;
        
        cfg.mode = pt.get<std::string>("general.remoteMode");
        
        cfg.swarmDestIP = pt.get<std::string>("swarm.dest_ip");
        cfg.swarmHostIP = pt.get<std::string>("swarm.host_ip");
        cfg.swarmPort = pt.get<uint16_t>("swarm.port");
        
        cfg.localIP = pt.get<std::string>("satlink-server.ip");
        cfg.localPort = pt.get<uint16_t>("satlink-server.port");
        
        cfg.remoteIP = pt.get<std::string>("satlink-remote.ip");
        cfg.remotePort = pt.get<uint16_t>("satlink-remote.port");        
                
        cfg.vehicles = pt.get<uint8_t>("sim.vehicles"); 
        
        cfg.originlat = pt.get<double_t>("origin.latitude");
        cfg.originlon = pt.get<double_t>("origin.longitude"); 
        
        cfg.tabletlat = pt.get<double_t>("tablet.latitude");
        cfg.tabletlon = pt.get<double_t>("tablet.longitude"); 
        //---------------------------------------------------
        // OBJECT CREATION
        //---------------------------------------------------                                                       
        
        if (!setupSwarmObject(cfg))
        {
            cout << "Error Creating Swarm Object." << endl;
            exit(0);
        }
        

        if (_serverO.begin(_pSwarmO) != clsJsonServer::retVal_SUCCESS)
        {
            cout << "Error serverO.begin." <<endl;
            exit(0);
        }

        cout << "startup complete" << endl;
          
          
          
        //---------------------------------------------------
        // MAIN LOOP
        //---------------------------------------------------                    
          try
          {             
            for (;;)
            {
                _pSwarmO->tickle();   
                _serverO.tickle();
                sleep_ms(10);
            }
          }
          catch(int e)
          {
              cout << "Unhandled Exception Found In Main:" << std::to_string(e) << endl;
              exit(1);
          }
          
    }


/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
& FUNCTION IMPLEMENTATION
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------------------------------------------------------
*/ 

   /*********************************************************/
   /* FUNCTION: exiting                                            
    * 
    * Comments and a complete description of this method
    * can be found with the function prototype
    *********************************************************/  
    void exiting() 
    {
        delete _pSwarmO;
        
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

   /*********************************************************/
   /* FUNCTION: my_handler                                            
    * 
    * Comments and a complete description of this method
    * can be found with the function prototype
    *********************************************************/  
    void my_handler(int s)
    {
        printf("Caught signal %d\n",s);          
        exit(0);
    }
      
        
      
   /*********************************************************/
   /* FUNCTION: setupSwarmObject                                            
    * 
    * Comments and a complete description of this method
    * can be found with the function prototype
    *********************************************************/      
    bool setupSwarmObject(config_s &cfg)
    {
        //---------------------------------------------------                                                       
        if (cfg.mode == "LOCAL")
        //---------------------------------------------------                                                       
        {
            clsSwarm_WAMV *pS = new clsSwarm_WAMV();
            
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_WAMV");            
                       
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO, cfg.swarmDestIP,cfg.swarmPort)) {            
                ERROR_RETURN("Failed clsSwarm_WAMV begin.");
            }
            
            _pSwarmO = pS;
        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "SATLINK-SERVER")
        //---------------------------------------------------                                                       
        {                                               
            clsSwarm_WAMV_LocalBridge *pS = new clsSwarm_WAMV_LocalBridge();
            
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_WAMV_LocalBridge");            
                      
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO, cfg.swarmDestIP, cfg.swarmPort,cfg.localIP , cfg.localPort)){
                ERROR_RETURN("Failed clsSwarm_WAMV_LocalBridge begin.");
            }
            
            _pSwarmO = pS;
            
        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "SATLINK-REMOTE")
        //---------------------------------------------------                                                       
        {
            basTransport_UDP::udpSetup_s udpSetup;
            
            udpSetup.in.address.address = cfg.remoteIP;
            udpSetup.in.address.port = cfg.remotePort;
            udpSetup.out.address.address = cfg.localIP;
            udpSetup.out.address.port = cfg.localPort;
            udpSetup.maxUDPPayloadSize = 90-24;
                        
            clsSwarm_WAMV_RemoteBridge *pS = new clsSwarm_WAMV_RemoteBridge();
            
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_WAMV_RemoteBridge");            
                      
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO,  udpSetup)){
                ERROR_RETURN("Failed clsSwarm_WAMV_RemoteBridge begin.");
            }
            
            _pSwarmO = pS;            

        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "SIMULATOR")
        //---------------------------------------------------                                                       
        {
            
            location_s origin, tablet;
            
            origin.lat = cfg.originlat;
            origin.lon = cfg.originlon;
            tablet.lat = cfg.tabletlat;
            tablet.lon = cfg.tabletlon;           
            
            clsSwarm_WAMV_Sim *pS = new clsSwarm_WAMV_Sim(); 
               
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_WAMV");            
                       
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO, origin, tablet,cfg.localIP, cfg.localPort,  cfg.vehicles)) {            
                ERROR_RETURN("Failed clsSwarm_WAMV begin.");
            }
            
            _pSwarmO = pS;
        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "DATADIVER")
        //---------------------------------------------------                                                       
        {
            
            location_s origin, tablet;
            
            origin.lat = cfg.originlat;
            origin.lon = cfg.originlon;
            tablet.lat = cfg.tabletlat;
            tablet.lon = cfg.tabletlon;           
            
            clsSwarm_DataDiver *pS = new clsSwarm_DataDiver(); 
               
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_DataDiver");            
                                               
            if (!pS->begin("/dev/RADIO_SWARM", "/dev/RADIO_RC",(basJsonServer_Callbacks *)&_serverO, "algOverride_DD.json")) 
            {            
                ERROR_RETURN("Failed clsSwarm_DataDiver begin.");
            }
            
            _pSwarmO = pS;
        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "DATADIVER-SATLINK-SERVER")
        //---------------------------------------------------                                                       
        {                                               
            clsSwarm_DataDiver_LocalBridge *pS = new clsSwarm_DataDiver_LocalBridge();
            
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_DataDiver_LocalBridge");            
                      
            if (!pS->begin("/dev/RADIO_SWARM", "/dev/RADIO_RC",(basJsonServer_Callbacks *)&_serverO, cfg.localIP, cfg.localPort, "algOverride_DD.json")){
                ERROR_RETURN("Failed clsSwarm_DataDiver_LocalBridge begin.");
            }
            
            _pSwarmO = pS;
            
        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "DATADIVER-SATLINK-REMOTE")
        //---------------------------------------------------                                                       
        {
            basTransport_UDP::udpSetup_s udpSetup;
            
            udpSetup.in.address.address = cfg.remoteIP;
            udpSetup.in.address.port = cfg.remotePort;
            udpSetup.out.address.address = cfg.localIP;
            udpSetup.out.address.port = cfg.localPort;
            udpSetup.maxUDPPayloadSize = 90-24;
                        
            clsSwarm_DataDiver_RemoteBridge *pS = new clsSwarm_DataDiver_RemoteBridge();
            
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_DataDiver_RemoteBridge");            
                      
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO,  udpSetup)){
                ERROR_RETURN("Failed clsSwarm_DataDiver_RemoteBridge begin.");
            }
            
            _pSwarmO = pS;            

        }
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "DATADIVER_SIM")
        //---------------------------------------------------                                                       
        {
            
            location_s origin, tablet;
            
            origin.lat = cfg.originlat;
            origin.lon = cfg.originlon;
            tablet.lat = cfg.tabletlat;
            tablet.lon = cfg.tabletlon;           
            
            clsSwarm_DataDiver_Sim *pS = new clsSwarm_DataDiver_Sim(); 
               
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_DataDiver_Sim");            
                       
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO, origin, tablet,cfg.localIP, cfg.localPort,  cfg.vehicles)) {            
                ERROR_RETURN("Failed clsSwarm_DataDiver_Sim begin.");
            }
            
            _pSwarmO = pS;
        }        
        
        //---------------------------------------------------                                                       
        else if (cfg.mode == "DATADIVER_FULLSIM")
        //---------------------------------------------------                                                       
        {
            
            location_s origin, tablet;
            
            origin.lat = cfg.originlat;
            origin.lon = cfg.originlon;
            tablet.lat = cfg.tabletlat;
            tablet.lon = cfg.tabletlon;           
            
            clsSwarm_DD_FullSim *pS = new clsSwarm_DD_FullSim(); 
               
            if (pS == NULL) ERROR_RETURN("Failed New clsSwarm_DD_FullSim");            
                       
            if (!pS->begin((basJsonServer_Callbacks *)&_serverO, origin, tablet,cfg.localIP, cfg.localPort,  cfg.vehicles)) {            
                ERROR_RETURN("Failed clsSwarm_DD_FullSim begin.");
            }
            
            _pSwarmO = pS;
        } 
        //---------------------------------------------------                                                       
        else
        //---------------------------------------------------                                                       
        {
            cout << "Invalid 'remoteMode' in config file." <<endl;
            return false;
        }
        
        return true;
        
    }
       
    
