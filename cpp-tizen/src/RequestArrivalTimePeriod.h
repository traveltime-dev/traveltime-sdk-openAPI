/*
 * RequestArrivalTimePeriod.h
 *
 * 
 */

#ifndef _RequestArrivalTimePeriod_H_
#define _RequestArrivalTimePeriod_H_


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

class RequestArrivalTimePeriod : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestArrivalTimePeriod();
	RequestArrivalTimePeriod(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestArrivalTimePeriod();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestArrivalTimePeriod_H_ */
