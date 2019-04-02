/*
 * ResponseDistanceBreakdownItem.h
 *
 * 
 */

#ifndef _ResponseDistanceBreakdownItem_H_
#define _ResponseDistanceBreakdownItem_H_


#include <string>
#include "ResponseTransportationMode.h"
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

class ResponseDistanceBreakdownItem : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseDistanceBreakdownItem();
	ResponseDistanceBreakdownItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseDistanceBreakdownItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ResponseTransportationMode getMode();

	/*! \brief Set 
	 */
	void setMode(ResponseTransportationMode  mode);
	/*! \brief Get 
	 */
	int getDistance();

	/*! \brief Set 
	 */
	void setDistance(int  distance);

private:
	ResponseTransportationMode mode;
	int distance;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseDistanceBreakdownItem_H_ */
