/*
 * ResponseTimeMapWktResult.h
 *
 * 
 */

#ifndef _ResponseTimeMapWktResult_H_
#define _ResponseTimeMapWktResult_H_


#include <string>
#include "ResponseTimeMapProperties.h"
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

class ResponseTimeMapWktResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapWktResult();
	ResponseTimeMapWktResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapWktResult();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getSearchId();

	/*! \brief Set 
	 */
	void setSearchId(std::string  search_id);
	/*! \brief Get 
	 */
	std::string getShape();

	/*! \brief Set 
	 */
	void setShape(std::string  shape);
	/*! \brief Get 
	 */
	ResponseTimeMapProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseTimeMapProperties  properties);

private:
	std::string search_id;
	std::string shape;
	ResponseTimeMapProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapWktResult_H_ */
