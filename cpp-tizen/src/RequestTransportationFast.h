/*
 * RequestTransportationFast.h
 *
 * 
 */

#ifndef _RequestTransportationFast_H_
#define _RequestTransportationFast_H_


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

class RequestTransportationFast : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTransportationFast();
	RequestTransportationFast(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTransportationFast();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);

private:
	std::string type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTransportationFast_H_ */
