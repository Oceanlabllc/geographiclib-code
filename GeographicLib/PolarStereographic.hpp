/**
 * \file PolarStereographic.hpp
 * \brief Header for GeographicLib::PolarStereographic class
 *
 * Copyright (c) Charles Karney (2008, 2009) <charles@karney.com>
 * and licensed under the LGPL.  For more information, see
 * http://charles.karney.info/geographic/
 **********************************************************************/

#if !defined(GEOGRAPHICLIB_POLARSTEREOGRAPHIC_HPP)
#define GEOGRAPHICLIB_POLARSTEREOGRAPHIC_HPP "$Id: PolarStereographic.hpp 6670 2009-08-14 21:58:46Z ckarney $"

#include <cmath>

namespace GeographicLib {

  /**
   * \brief Polar Stereographic Projection
   *
   * Implementation taken from the report,
   * - J. P. Snyder,
   *   <a href="http://pubs.er.usgs.gov/usgspubs/pp/pp1395"> Map Projections: A
   *   Working Manual</a>, USGS Professional Paper 1395 (1987),
   *   pp. 160&ndash;163.
   *
   * This is a straightforward implementation of the equations in Snyder except
   * that Newton's method is used to invert the projection.
   **********************************************************************/
  class PolarStereographic {
  private:
    const double _a, _f, _k0, _e2, _e, _e2m, _c;
    static const double tol;
    static const int numit = 5;
    static inline double sq(double x) throw() { return x * x; }
#if defined(_MSC_VER)
    static inline double hypot(double x, double y) throw()
    { return _hypot(x, y); }
    static inline double atanh(double x) throw() {
      return std::log((1 + x)/(1 - x))/2;
    }
#else
    static inline double hypot(double x, double y) throw()
    { return ::hypot(x, y); }
    static inline double atanh(double x) throw() { return ::atanh(x); }
#endif
    // Return e * atanh(e * x) for f >= 0, else return
    // - sqrt(-e2) * atan( sqrt(-e2) * x) for f < 0
    inline double eatanhe(double x) const throw() {
      return _f >= 0 ? _e * atanh(_e * x) : - _e * atan(_e * x);
    }
  public:

    /**
     * Constructor for a ellipsoid radius \e a (meters), reciprocal flattening
     * \e r, and central scale factor \e k0.  Setting \e r <= 0 implies \e r =
     * inf or flattening = 0 (i.e., a sphere).
     **********************************************************************/
    PolarStereographic(double a, double r, double k0) throw();

    /**
     * Convert from latitude \e lat (degrees) and longitude \e lon (degrees) to
     * polar stereographic easting \e x (meters) and northing \e y (meters).
     * The projection is about the pole given by \e northp (false means south,
     * true means north).  Also return the meridian convergence \e gamma
     * (degrees) and the scale \e k.  No false easting or northing is added.
     * \e lat should be in the range (-90, 90] for \e northp = true and in the
     * range [-90, 90) for \e northp = false; \e lon should be in the range
     * [-180, 360].
     **********************************************************************/
    void Forward(bool northp, double lat, double lon,
		 double& x, double& y,
		 double& gamma, double& k) const throw();

    /**
     * Convert from polar stereogrphic easting \e x (meters) and northing \e y
     * (meters) to latitude \e lat (degrees) and longitude \e lon (degrees) .
     * The hemisphere is given by \e northp (false means south, true means
     * north).  Also return the meridian convergence \e gamma (degrees) and the
     * scale \e k.  No false easting or northing is added.  The value of \e lon
     * returned is in the range [-180, 180).
     **********************************************************************/
    void Reverse(bool northp, double x, double y,
		 double& lat, double& lon,
		 double& gamma, double& k) const throw();

    /**
     * A global instantiation of PolarStereographic with the WGS84 ellipsoid
     * and the UPS scale factor.  However, unlike UPS, no false easting or
     * northing is added.
     **********************************************************************/
    const static PolarStereographic UPS;
  };

} // namespace GeographicLib

#endif
