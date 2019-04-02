/*
 * RequestTimeFilter.h
 *
 * 
 */

#ifndef _RequestTimeFilter_H_
#define _RequestTimeFilter_H_


#include <string>
#include "RequestLocation.h"
#include "RequestTimeFilterArrivalSearch.h"
#include "RequestTimeFilterDepartureSearch.h"
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

class RequestTimeFilter : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilter();
	RequestTimeFilter(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilter();

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
	std::list<RequestTimeFilterDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestTimeFilterDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestTimeFilterArrivalSearch> arrival_searches);

private:
	std::list <RequestLocation>locations;
	std::list <RequestTimeFilterDepartureSearch>departure_searches;
	std::list <RequestTimeFilterArrivalSearch>arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilter_H_ */
