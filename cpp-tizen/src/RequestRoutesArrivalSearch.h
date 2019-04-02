/*
 * RequestRoutesArrivalSearch.h
 *
 * 
 */

#ifndef _RequestRoutesArrivalSearch_H_
#define _RequestRoutesArrivalSearch_H_


#include <string>
#include "RequestRangeFull.h"
#include "RequestRoutesProperty.h"
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

class RequestRoutesArrivalSearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestRoutesArrivalSearch();
	RequestRoutesArrivalSearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestRoutesArrivalSearch();

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
	std::string getArrivalTime();

	/*! \brief Set 
	 */
	void setArrivalTime(std::string  arrival_time);
	/*! \brief Get 
	 */
	std::list<RequestRoutesProperty> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <RequestRoutesProperty> properties);
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
	std::string arrival_time;
	std::list <RequestRoutesProperty>properties;
	RequestRangeFull range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestRoutesArrivalSearch_H_ */
