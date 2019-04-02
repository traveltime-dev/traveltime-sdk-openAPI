/*
 * ResponseTransportationMode.h
 *
 * 
 */

#ifndef _ResponseTransportationMode_H_
#define _ResponseTransportationMode_H_


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

class ResponseTransportationMode : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTransportationMode();
	ResponseTransportationMode(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTransportationMode();

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

#endif /* _ResponseTransportationMode_H_ */
