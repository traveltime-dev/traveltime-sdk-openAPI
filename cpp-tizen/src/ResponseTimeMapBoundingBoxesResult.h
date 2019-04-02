/*
 * ResponseTimeMapBoundingBoxesResult.h
 *
 * 
 */

#ifndef _ResponseTimeMapBoundingBoxesResult_H_
#define _ResponseTimeMapBoundingBoxesResult_H_


#include <string>
#include "ResponseBoundingBox.h"
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

class ResponseTimeMapBoundingBoxesResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapBoundingBoxesResult();
	ResponseTimeMapBoundingBoxesResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapBoundingBoxesResult();

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
	std::list<ResponseBoundingBox> getBoundingBoxes();

	/*! \brief Set 
	 */
	void setBoundingBoxes(std::list <ResponseBoundingBox> bounding_boxes);
	/*! \brief Get 
	 */
	ResponseTimeMapProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseTimeMapProperties  properties);

private:
	std::string search_id;
	std::list <ResponseBoundingBox>bounding_boxes;
	ResponseTimeMapProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapBoundingBoxesResult_H_ */
