/*
 * RequestTimeMap.h
 *
 * 
 */

#ifndef _RequestTimeMap_H_
#define _RequestTimeMap_H_


#include <string>
#include "RequestTimeMapArrivalSearch.h"
#include "RequestTimeMapDepartureSearch.h"
#include "RequestUnionOnIntersection.h"
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

class RequestTimeMap : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeMap();
	RequestTimeMap(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeMap();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestTimeMapDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestTimeMapDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestTimeMapArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestTimeMapArrivalSearch> arrival_searches);
	/*! \brief Get 
	 */
	std::list<RequestUnionOnIntersection> getUnions();

	/*! \brief Set 
	 */
	void setUnions(std::list <RequestUnionOnIntersection> unions);
	/*! \brief Get 
	 */
	std::list<RequestUnionOnIntersection> getIntersections();

	/*! \brief Set 
	 */
	void setIntersections(std::list <RequestUnionOnIntersection> intersections);

private:
	std::list <RequestTimeMapDepartureSearch>departure_searches;
	std::list <RequestTimeMapArrivalSearch>arrival_searches;
	std::list <RequestUnionOnIntersection>unions;
	std::list <RequestUnionOnIntersection>intersections;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeMap_H_ */
