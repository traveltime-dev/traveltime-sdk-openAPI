/*
 * RequestTimeFilterPostcodeSectorsProperty.h
 *
 * 
 */

#ifndef _RequestTimeFilterPostcodeSectorsProperty_H_
#define _RequestTimeFilterPostcodeSectorsProperty_H_


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

class RequestTimeFilterPostcodeSectorsProperty : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterPostcodeSectorsProperty();
	RequestTimeFilterPostcodeSectorsProperty(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterPostcodeSectorsProperty();

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

#endif /* _RequestTimeFilterPostcodeSectorsProperty_H_ */
