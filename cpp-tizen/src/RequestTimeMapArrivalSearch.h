/*
 * RequestTimeMapArrivalSearch.h
 *
 * 
 */

#ifndef _RequestTimeMapArrivalSearch_H_
#define _RequestTimeMapArrivalSearch_H_


#include <string>
#include "Coords.h"
#include "RequestRangeNoMaxResults.h"
#include "RequestTimeMapProperty.h"
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

class RequestTimeMapArrivalSearch : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeMapArrivalSearch();
	RequestTimeMapArrivalSearch(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeMapArrivalSearch();

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
	Coords getCoords();

	/*! \brief Set 
	 */
	void setCoords(Coords  coords);
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
	std::list<RequestTimeMapProperty> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <RequestTimeMapProperty> properties);
	/*! \brief Get 
	 */
	RequestRangeNoMaxResults getRange();

	/*! \brief Set 
	 */
	void setRange(RequestRangeNoMaxResults  range);

private:
	std::string id;
	Coords coords;
	RequestTransportation transportation;
	int travel_time;
	std::string arrival_time;
	std::list <RequestTimeMapProperty>properties;
	RequestRangeNoMaxResults range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeMapArrivalSearch_H_ */
