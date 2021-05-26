/*
 * RequestLevelOfDetail.h
 *
 * 
 */

#ifndef _RequestLevelOfDetail_H_
#define _RequestLevelOfDetail_H_


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

class RequestLevelOfDetail : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestLevelOfDetail();
	RequestLevelOfDetail(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestLevelOfDetail();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getScaleType();

	/*! \brief Set 
	 */
	void setScaleType(std::string  scale_type);
	/*! \brief Get 
	 */
	std::string getLevel();

	/*! \brief Set 
	 */
	void setLevel(std::string  level);

private:
	std::string scale_type;
	std::string level;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestLevelOfDetail_H_ */
