/*
 * RequestRoutesProperty.h
 *
 * 
 */

#ifndef _RequestRoutesProperty_H_
#define _RequestRoutesProperty_H_


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

class RequestRoutesProperty : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestRoutesProperty();
	RequestRoutesProperty(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestRoutesProperty();

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

#endif /* _RequestRoutesProperty_H_ */
