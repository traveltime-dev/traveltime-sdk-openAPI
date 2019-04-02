/*
 * RequestTimeFilterPostcodeSectors.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodeSectors_H_
#define _RequestTimeFilterPostcodeSectors_H_


#include <string>
#include "RequestTimeFilterPostcodeSectorsArrivalSearch.h"
#include "RequestTimeFilterPostcodeSectorsDepartureSearch.h"
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

class RequestTimeFilterPostcodeSectors : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodeSectors();
	RequestTimeFilterPostcodeSectors(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodeSectors();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestTimeFilterPostcodeSectorsDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestTimeFilterPostcodeSectorsArrivalSearch> arrival_searches);

private:
	std::list <RequestTimeFilterPostcodeSectorsDepartureSearch>departure_searches;
	std::list <RequestTimeFilterPostcodeSectorsArrivalSearch>arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterPostcodeSectors_H_ */
