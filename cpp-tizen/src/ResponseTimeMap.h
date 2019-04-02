/*
 * ResponseTimeMap.h
 *
 * 
 */

#ifndef _ResponseTimeMap_H_
#define _ResponseTimeMap_H_


#include <string>
#include "ResponseTimeMapResult.h"
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

class ResponseTimeMap : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMap();
	ResponseTimeMap(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMap();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeMapResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeMapResult> results);

private:
	std::list <ResponseTimeMapResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMap_H_ */
