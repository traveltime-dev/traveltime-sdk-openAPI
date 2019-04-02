/*
 * ResponseTimeMapBoundingBoxes.h
 *
 * 
 */

#ifndef _ResponseTimeMapBoundingBoxes_H_
#define _ResponseTimeMapBoundingBoxes_H_


#include <string>
#include "ResponseTimeMapBoundingBoxesResult.h"
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

class ResponseTimeMapBoundingBoxes : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapBoundingBoxes();
	ResponseTimeMapBoundingBoxes(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapBoundingBoxes();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeMapBoundingBoxesResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeMapBoundingBoxesResult> results);

private:
	std::list <ResponseTimeMapBoundingBoxesResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapBoundingBoxes_H_ */
