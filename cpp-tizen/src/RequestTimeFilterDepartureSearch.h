/*
 * RequestTimeFilterDepartureSearch.h
 *
 * 
 */

#ifndef _RequestTimeFilterDepartureSearch_H_
#define _RequestTimeFilterDepartureSearch_H_


#include <string>
#include "RequestRangeFull.h"
#include "RequestTimeFilterProperty.h"
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

class RequestTimeFilterDepartureSearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterDepartureSearch();
	RequestTimeFilterDepartureSearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterDepartureSearch();

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
	std::string getDepartureLocationId();

	/*! \brief Set 
	 */
	void setDepartureLocationId(std::string  departure_location_id);
	/*! \brief Get 
	 */
	std::list<std::string> getArrivalLocationIds();

	/*! \brief Set 
	 */
	void setArrivalLocationIds(std::list <std::string> arrival_location_ids);
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
	std::list<RequestTimeFilterProperty> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <RequestTimeFilterProperty> properties);
	/*! \brief Get 
	 */
	RequestRangeFull getRange();

	/*! \brief Set 
	 */
	void setRange(RequestRangeFull  range);

private:
	std::string id;
	std::string departure_location_id;
	std::list <std::string>arrival_location_ids;
	RequestTransportation transportation;
	int travel_time;
	std::string departure_time;
	std::list <RequestTimeFilterProperty>properties;
	RequestRangeFull range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterDepartureSearch_H_ */
