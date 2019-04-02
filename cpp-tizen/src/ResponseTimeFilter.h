/*
 * ResponseTimeFilter.h
 *
 * 
 */

#ifndef _ResponseTimeFilter_H_
#define _ResponseTimeFilter_H_


#include <string>
#include "ResponseTimeFilterResult.h"
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

class ResponseTimeFilter : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilter();
	ResponseTimeFilter(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilter();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeFilterResult> results);

private:
	std::list <ResponseTimeFilterResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilter_H_ */
