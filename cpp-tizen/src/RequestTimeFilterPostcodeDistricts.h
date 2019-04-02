/*
 * RequestTimeFilterPostcodeDistricts.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodeDistricts_H_
#define _RequestTimeFilterPostcodeDistricts_H_


#include <string>
#include "RequestTimeFilterPostcodeDistrictsArrivalSearch.h"
#include "RequestTimeFilterPostcodeDistrictsDepartureSearch.h"
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

class RequestTimeFilterPostcodeDistricts : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodeDistricts();
	RequestTimeFilterPostcodeDistricts(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodeDistricts();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches();

	/*! \brief Set 
	 */
	void setDepartureSearches(std::list <RequestTimeFilterPostcodeDistrictsDepartureSearch> departure_searches);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodeDistrictsArrivalSearch> getArrivalSearches();

	/*! \brief Set 
	 */
	void setArrivalSearches(std::list <RequestTimeFilterPostcodeDistrictsArrivalSearch> arrival_searches);

private:
	std::list <RequestTimeFilterPostcodeDistrictsDepartureSearch>departure_searches;
	std::list <RequestTimeFilterPostcodeDistrictsArrivalSearch>arrival_searches;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterPostcodeDistricts_H_ */
