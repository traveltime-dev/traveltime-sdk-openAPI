/*
 * ResponseTimeMapWkt.h
 *
 * 
 */

#ifndef _ResponseTimeMapWkt_H_
#define _ResponseTimeMapWkt_H_


#include <string>
#include "ResponseTimeMapWktResult.h"
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

class ResponseTimeMapWkt : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMapWkt();
	ResponseTimeMapWkt(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMapWkt();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeMapWktResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeMapWktResult> results);

private:
	std::list <ResponseTimeMapWktResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMapWkt_H_ */
