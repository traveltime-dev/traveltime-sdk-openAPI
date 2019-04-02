/*
 * ResponseTimeFilterFastProperties.h
 *
 * 
 */

#ifndef _ResponseTimeFilterFastProperties_H_
#define _ResponseTimeFilterFastProperties_H_


#include <string>
#include "ResponseFaresFast.h"
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

class ResponseTimeFilterFastProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterFastProperties();
	ResponseTimeFilterFastProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterFastProperties();

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
	ResponseFaresFast getFares();

	/*! \brief Set 
	 */
	void setFares(ResponseFaresFast  fares);

private:
	int travel_time;
	ResponseFaresFast fares;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterFastProperties_H_ */
