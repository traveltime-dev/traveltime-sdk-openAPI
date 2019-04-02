/*
 * ResponseTimeFilterProperties.h
 *
 * 
 */

#ifndef _ResponseTimeFilterProperties_H_
#define _ResponseTimeFilterProperties_H_


#include <string>
#include "ResponseDistanceBreakdownItem.h"
#include "ResponseFares.h"
#include "ResponseRoute.h"
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

class ResponseTimeFilterProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterProperties();
	ResponseTimeFilterProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterProperties();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	int getTravelTime();

	/*! \brief Set 
	 */
	void setTravelTime(int  travel_time);
	/*! \brief Get 
	 */
	int getDistance();

	/*! \brief Set 
	 */
	void setDistance(int  distance);
	/*! \brief Get 
	 */
	std::list<ResponseDistanceBreakdownItem> getDistanceBreakdown();

	/*! \brief Set 
	 */
	void setDistanceBreakdown(std::list <ResponseDistanceBreakdownItem> distance_breakdown);
	/*! \brief Get 
	 */
	ResponseFares getFares();

	/*! \brief Set 
	 */
	void setFares(ResponseFares  fares);
	/*! \brief Get 
	 */
	ResponseRoute getRoute();

	/*! \brief Set 
	 */
	void setRoute(ResponseRoute  route);

private:
	int travel_time;
	int distance;
	std::list <ResponseDistanceBreakdownItem>distance_breakdown;
	ResponseFares fares;
	ResponseRoute route;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterProperties_H_ */
