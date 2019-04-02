/*
 * RequestTimeMapProperty.h
 *
 * 
 */

#ifndef _RequestTimeMapProperty_H_
#define _RequestTimeMapProperty_H_


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

class RequestTimeMapProperty : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeMapProperty();
	RequestTimeMapProperty(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeMapProperty();

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

#endif /* _RequestTimeMapProperty_H_ */
