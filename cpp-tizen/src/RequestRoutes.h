/*
 * RequestRoutes.h
 *
 * 
 */

#ifndef _RequestRoutes_H_
#define _RequestRoutes_H_


#include <string>
#include "RequestLocation.h"
#include "RequestRoutesArrivalSearch.h"
#include "RequestRoutesDepartureSearch.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RequestRoutes : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestRoutes();
	RequestRoutes(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestRoutes();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestLocation> getLocations();

	/*! \brief Set 
	 */
	void setLocations(std::list <RequestLocation> locations);
	/*! \brief Get 
	 */
	std::list<RequestRoutesDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestRoutesDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestRoutesArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestRoutesArrivalSearch> arrival_searches);

private:
	std::list <RequestLocation>locations;
	std::list <RequestRoutesDepartureSearch>departure_searches;
	std::list <RequestRoutesArrivalSearch>arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestRoutes_H_ */
