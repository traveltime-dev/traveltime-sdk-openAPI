/*
 * RequestTimeFilterPostcodeDistrictsDepartureSearch.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodeDistrictsDepartureSearch_H_
#define _RequestTimeFilterPostcodeDistrictsDepartureSearch_H_


#include <string>
#include "RequestRangeFull.h"
#include "RequestTimeFilterPostcodeDistrictsProperty.h"
#include "RequestTransportation.h"
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

class RequestTimeFilterPostcodeDistrictsDepartureSearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodeDistrictsDepartureSearch();
	RequestTimeFilterPostcodeDistrictsDepartureSearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodeDistrictsDepartureSearch();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	RequestTransportation getTransportation();

	/*! \brief Set 
	 */
	void setTransportation(RequestTransportation  transportation);
	/*! \brief Get 
	 */
	int getTravelTime();

	/*! \brief Set 
	 */
	void setTravelTime(int  travel_time);
	/*! \brief Get 
	 */
	std::string getDepartureTime();

	/*! \brief Set 
	 */
	void setDepartureTime(std::string  departure_time);
	/*! \brief Get 
	 */
	double getReachablePostcodesThreshold();

	/*! \brief Set 
	 */
	void setReachablePostcodesThreshold(double  reachable_postcodes_threshold);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterPostcodeDistrictsProperty> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <RequestTimeFilterPostcodeDistrictsProperty> properties);
	/*! \brief Get 
	 */
	RequestRangeFull getRange();

	/*! \brief Set 
	 */
	void setRange(RequestRangeFull  range);

private:
	std::string id;
	RequestTransportation transportation;
	int travel_time;
	std::string departure_time;
	double reachable_postcodes_threshold;
	std::list <RequestTimeFilterPostcodeDistrictsProperty>properties;
	RequestRangeFull range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterPostcodeDistrictsDepartureSearch_H_ */
