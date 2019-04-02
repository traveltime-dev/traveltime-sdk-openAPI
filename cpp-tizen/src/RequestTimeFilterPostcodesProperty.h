/*
 * RequestTimeFilterPostcodesProperty.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodesProperty_H_
#define _RequestTimeFilterPostcodesProperty_H_


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

class RequestTimeFilterPostcodesProperty : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodesProperty();
	RequestTimeFilterPostcodesProperty(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodesProperty();

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

#endif /* _RequestTimeFilterPostcodesProperty_H_ */
