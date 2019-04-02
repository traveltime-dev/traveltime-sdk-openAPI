/*
 * ResponseRoutesProperties.h
 *
 * 
 */

#ifndef _ResponseRoutesProperties_H_
#define _ResponseRoutesProperties_H_


#include <string>
#include "ResponseFares.h"
#include "ResponseRoute.h"
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

class ResponseRoutesProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseRoutesProperties();
	ResponseRoutesProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseRoutesProperties();

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
	ResponseFares fares;
	ResponseRoute route;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseRoutesProperties_H_ */
