/*
 * RequestTimeFilterArrivalSearch.h
 *
 * 
 */

#ifndef _RequestTimeFilterArrivalSearch_H_
#define _RequestTimeFilterArrivalSearch_H_


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

class RequestTimeFilterArrivalSearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterArrivalSearch();
	RequestTimeFilterArrivalSearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterArrivalSearch();

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
	std::list<std::string> getDepartureLocationIds();

	/*! \brief Set 
	 */
	void setDepartureLocationIds(std::list <std::string> departure_location_ids);
	/*! \brief Get 
	 */
	std::string getArrivalLocationId();

	/*! \brief Set 
	 */
	void setArrivalLocationId(std::string  arrival_location_id);
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
	std::string getArrivalTime();

	/*! \brief Set 
	 */
	void setArrivalTime(std::string  arrival_time);
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
	std::list <std::string>departure_location_ids;
	std::string arrival_location_id;
	RequestTransportation transportation;
	int travel_time;
	std::string arrival_time;
	std::list <RequestTimeFilterProperty>properties;
	RequestRangeFull range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterArrivalSearch_H_ */
