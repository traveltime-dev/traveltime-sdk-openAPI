/*
 * RequestTimeFilterFastProperty.h
 *
 * 
 */

#ifndef _RequestTimeFilterFastProperty_H_
#define _RequestTimeFilterFastProperty_H_


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

class RequestTimeFilterFastProperty : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterFastProperty();
	RequestTimeFilterFastProperty(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterFastProperty();

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

#endif /* _RequestTimeFilterFastProperty_H_ */
