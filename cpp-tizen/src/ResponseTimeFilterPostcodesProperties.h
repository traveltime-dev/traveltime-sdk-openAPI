/*
 * ResponseTimeFilterPostcodesProperties.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodesProperties_H_
#define _ResponseTimeFilterPostcodesProperties_H_


#include <string>
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

class ResponseTimeFilterPostcodesProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodesProperties();
	ResponseTimeFilterPostcodesProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodesProperties();

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

private:
	int travel_time;
	int distance;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodesProperties_H_ */
