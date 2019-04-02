/*
 * ResponseTimeMapProperties.h
 *
 * 
 */

#ifndef _ResponseTimeMapProperties_H_
#define _ResponseTimeMapProperties_H_


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

class ResponseTimeMapProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapProperties();
	ResponseTimeMapProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapProperties();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getIsOnlyWalking();

	/*! \brief Set 
	 */
	void setIsOnlyWalking(bool  is_only_walking);

private:
	bool is_only_walking;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapProperties_H_ */
