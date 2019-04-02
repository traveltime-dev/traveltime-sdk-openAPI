/*
 * ResponseRoutes.h
 *
 * 
 */

#ifndef _ResponseRoutes_H_
#define _ResponseRoutes_H_


#include <string>
#include "ResponseRoutesResult.h"
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

class ResponseRoutes : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseRoutes();
	ResponseRoutes(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseRoutes();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseRoutesResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseRoutesResult> results);

private:
	std::list <ResponseRoutesResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseRoutes_H_ */
