/*
 * RequestTimeFilterFastArrivalOneToManySearch.h
 *
 * 
 */

#ifndef _RequestTimeFilterFastArrivalOneToManySearch_H_
#define _RequestTimeFilterFastArrivalOneToManySearch_H_


#include <string>
#include "RequestArrivalTimePeriod.h"
#include "RequestTimeFilterFastProperty.h"
#include "RequestTransportationFast.h"
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

class RequestTimeFilterFastArrivalOneToManySearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterFastArrivalOneToManySearch();
	RequestTimeFilterFastArrivalOneToManySearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterFastArrivalOneToManySearch();

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
	RequestTransportationFast getTransportation();

	/*! \brief Set 
	 */
	void setTransportation(RequestTransportationFast  transportation);
	/*! \brief Get 
	 */
	int getTravelTime();

	/*! \brief Set 
	 */
	void setTravelTime(int  travel_time);
	/*! \brief Get 
	 */
	RequestArrivalTimePeriod getArrivalTimePeriod();

	/*! \brief Set 
	 */
	void setArrivalTimePeriod(RequestArrivalTimePeriod  arrival_time_period);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterFastProperty> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <RequestTimeFilterFastProperty> properties);

private:
	std::string id;
	std::string departure_location_id;
	std::list <std::string>arrival_location_ids;
	RequestTransportationFast transportation;
	int travel_time;
	RequestArrivalTimePeriod arrival_time_period;
	std::list <RequestTimeFilterFastProperty>properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterFastArrivalOneToManySearch_H_ */
