/*
 * ResponseTimeMapResult.h
 *
 * 
 */

#ifndef _ResponseTimeMapResult_H_
#define _ResponseTimeMapResult_H_


#include <string>
#include "ResponseShape.h"
#include "ResponseTimeMapProperties.h"
#include <list>
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

class ResponseTimeMapResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapResult();
	ResponseTimeMapResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapResult();

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
	std::list<ResponseShape> getShapes();

	/*! \brief Set 
	 */
	void setShapes(std::list <ResponseShape> shapes);
	/*! \brief Get 
	 */
	ResponseTimeMapProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseTimeMapProperties  properties);

private:
	std::string search_id;
	std::list <ResponseShape>shapes;
	ResponseTimeMapProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapResult_H_ */
