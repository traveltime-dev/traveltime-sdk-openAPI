/*
 * ResponseTimeFilterFast.h
 *
 * 
 */

#ifndef _ResponseTimeFilterFast_H_
#define _ResponseTimeFilterFast_H_


#include <string>
#include "ResponseTimeFilterFastResult.h"
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

class ResponseTimeFilterFast : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterFast();
	ResponseTimeFilterFast(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterFast();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterFastResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeFilterFastResult> results);

private:
	std::list <ResponseTimeFilterFastResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterFast_H_ */
