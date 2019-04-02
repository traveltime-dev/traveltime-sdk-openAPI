/*
 * ResponseMapInfoMap.h
 *
 * 
 */

#ifndef _ResponseMapInfoMap_H_
#define _ResponseMapInfoMap_H_


#include <string>
#include "ResponseMapInfoFeatures.h"
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

class ResponseMapInfoMap : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseMapInfoMap();
	ResponseMapInfoMap(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseMapInfoMap();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	ResponseMapInfoFeatures getFeatures();

	/*! \brief Set 
	 */
	void setFeatures(ResponseMapInfoFeatures  features);

private:
	std::string name;
	ResponseMapInfoFeatures features;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseMapInfoMap_H_ */
