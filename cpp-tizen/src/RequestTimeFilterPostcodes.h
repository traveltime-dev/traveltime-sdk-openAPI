/*
 * RequestTimeFilterPostcodes.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodes_H_
#define _RequestTimeFilterPostcodes_H_


#include <string>
#include "RequestTimeFilterPostcodesArrivalSearch.h"
#include "RequestTimeFilterPostcodesDepartureSearch.h"
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

class RequestTimeFilterPostcodes : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodes();
	RequestTimeFilterPostcodes(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodes();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodesDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestTimeFilterPostcodesDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodesArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestTimeFilterPostcodesArrivalSearch> arrival_searches);

private:
	std::list <RequestTimeFilterPostcodesDepartureSearch>departure_searches;
	std::list <RequestTimeFilterPostcodesArrivalSearch>arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterPostcodes_H_ */
