/*
 * RequestTimeFilterFast.h
 *
 * 
 */

#ifndef _RequestTimeFilterFast_H_
#define _RequestTimeFilterFast_H_


#include <string>
#include "RequestLocation.h"
#include "RequestTimeFilterFastArrivalSearches.h"
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

class RequestTimeFilterFast : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterFast();
	RequestTimeFilterFast(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterFast();

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
	RequestTimeFilterFastArrivalSearches getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(RequestTimeFilterFastArrivalSearches  arrival_searches);

private:
	std::list <RequestLocation>locations;
	RequestTimeFilterFastArrivalSearches arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterFast_H_ */
