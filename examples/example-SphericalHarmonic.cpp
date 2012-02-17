// Example of using the GeographicLib::SphericalHarmonic class
// $Id: b7e4a45d66787db49d40aa7bc991ab686cc32d44 $

#include <iostream>
#include <exception>
#include <vector>
#include <GeographicLib/SphericalHarmonic.hpp>

using namespace std;
using namespace GeographicLib;

int main() {
  try {
    int N = 3;                  // The maxium degree
    double ca[] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}; // cosine coefficients
    vector<double> C(ca, ca + (N + 1) * (N + 2) / 2);
    double sa[] = {6, 5, 4, 3, 2, 1}; // sine coefficients
    vector<double> S(sa, sa + N * (N + 1) / 2);
    double a = 1;
    SphericalHarmonic h(C, S, N, a);
    double x = 2, y = 3, z = 1;
    double v, vx, vy, vz;
    v = h(x, y, z, vx, vy, vz);
    cout << v << " " << vx << " " << vy << " " << vz << "\n";
  }
  catch (const exception& e) {
    cerr << "Caught exception: " << e.what() << "\n";
    return 1;
  }
  return 0;
}