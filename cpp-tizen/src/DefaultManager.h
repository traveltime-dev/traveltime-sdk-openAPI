#ifndef _DefaultManager_H_
#define _DefaultManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "RequestRoutes.h"
#include "RequestSupportedLocations.h"
#include "RequestTimeFilter.h"
#include "RequestTimeFilterFast.h"
#include "RequestTimeFilterPostcodeDistricts.h"
#include "RequestTimeFilterPostcodeSectors.h"
#include "RequestTimeFilterPostcodes.h"
#include "RequestTimeMap.h"
#include "ResponseError.h"
#include "ResponseGeocoding.h"
#include "ResponseMapInfo.h"
#include "ResponseRoutes.h"
#include "ResponseSupportedLocations.h"
#include "ResponseTimeFilter.h"
#include "ResponseTimeFilterFast.h"
#include "ResponseTimeFilterPostcodeDistricts.h"
#include "ResponseTimeFilterPostcodeSectors.h"
#include "ResponseTimeFilterPostcodes.h"
#include "ResponseTimeMap.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Default Default
 * \ingroup Operations
 *  @{
 */
class DefaultManager {
public:
	DefaultManager();
	virtual ~DefaultManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param focusPeriodlat  *Required*
 * \param focusPeriodlng  *Required*
 * \param withinPeriodcountry 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool geocodingReverseSearchSync(char * accessToken,
	double focusPeriodlat, double focusPeriodlng, std::string withinPeriodcountry, 
	void(* handler)(ResponseGeocoding, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param focusPeriodlat  *Required*
 * \param focusPeriodlng  *Required*
 * \param withinPeriodcountry 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool geocodingReverseSearchAsync(char * accessToken,
	double focusPeriodlat, double focusPeriodlng, std::string withinPeriodcountry, 
	void(* handler)(ResponseGeocoding, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param query  *Required*
 * \param withinPeriodcountry 
 * \param focusPeriodlat 
 * \param focusPeriodlng 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool geocodingSearchSync(char * accessToken,
	std::string query, std::string withinPeriodcountry, double focusPeriodlat, double focusPeriodlng, 
	void(* handler)(ResponseGeocoding, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param query  *Required*
 * \param withinPeriodcountry 
 * \param focusPeriodlat 
 * \param focusPeriodlng 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool geocodingSearchAsync(char * accessToken,
	std::string query, std::string withinPeriodcountry, double focusPeriodlat, double focusPeriodlng, 
	void(* handler)(ResponseGeocoding, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mapInfoSync(char * accessToken,
	
	void(* handler)(ResponseMapInfo, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mapInfoAsync(char * accessToken,
	
	void(* handler)(ResponseMapInfo, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestRoutes  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool routesSync(char * accessToken,
	RequestRoutes requestRoutes, 
	void(* handler)(ResponseRoutes, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestRoutes  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool routesAsync(char * accessToken,
	RequestRoutes requestRoutes, 
	void(* handler)(ResponseRoutes, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestSupportedLocations  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool supportedLocationsSync(char * accessToken,
	RequestSupportedLocations requestSupportedLocations, 
	void(* handler)(ResponseSupportedLocations, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestSupportedLocations  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool supportedLocationsAsync(char * accessToken,
	RequestSupportedLocations requestSupportedLocations, 
	void(* handler)(ResponseSupportedLocations, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeFilter  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterSync(char * accessToken,
	RequestTimeFilter requestTimeFilter, 
	void(* handler)(ResponseTimeFilter, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeFilter  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterAsync(char * accessToken,
	RequestTimeFilter requestTimeFilter, 
	void(* handler)(ResponseTimeFilter, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeFilterFast  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterFastSync(char * accessToken,
	RequestTimeFilterFast requestTimeFilterFast, 
	void(* handler)(ResponseTimeFilterFast, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeFilterFast  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterFastAsync(char * accessToken,
	RequestTimeFilterFast requestTimeFilterFast, 
	void(* handler)(ResponseTimeFilterFast, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeFilterPostcodeDistricts  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodeDistrictsSync(char * accessToken,
	RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, 
	void(* handler)(ResponseTimeFilterPostcodeDistricts, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeFilterPostcodeDistricts  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodeDistrictsAsync(char * accessToken,
	RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, 
	void(* handler)(ResponseTimeFilterPostcodeDistricts, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeFilterPostcodeSectors  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodeSectorsSync(char * accessToken,
	RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, 
	void(* handler)(ResponseTimeFilterPostcodeSectors, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeFilterPostcodeSectors  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodeSectorsAsync(char * accessToken,
	RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, 
	void(* handler)(ResponseTimeFilterPostcodeSectors, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeFilterPostcodes  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodesSync(char * accessToken,
	RequestTimeFilterPostcodes requestTimeFilterPostcodes, 
	void(* handler)(ResponseTimeFilterPostcodes, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeFilterPostcodes  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeFilterPostcodesAsync(char * accessToken,
	RequestTimeFilterPostcodes requestTimeFilterPostcodes, 
	void(* handler)(ResponseTimeFilterPostcodes, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param requestTimeMap  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeMapSync(char * accessToken,
	RequestTimeMap requestTimeMap, 
	void(* handler)(ResponseTimeMap, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param requestTimeMap  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool timeMapAsync(char * accessToken,
	RequestTimeMap requestTimeMap, 
	void(* handler)(ResponseTimeMap, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api.traveltimeapp.com";
	}
};
/** @}*/

}
}
#endif /* DefaultManager_H_ */
