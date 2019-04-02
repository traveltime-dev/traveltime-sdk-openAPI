/*
 * ResponseTimeFilterPostcodeSectors.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeSectors_H_
#define _ResponseTimeFilterPostcodeSectors_H_


#include <string>
#include "ResponseTimeFilterPostcodeSectorsResult.h"
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

class ResponseTimeFilterPostcodeSectors : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeSectors();
	ResponseTimeFilterPostcodeSectors(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeSectors();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterPostcodeSectorsResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeFilterPostcodeSectorsResult> results);

private:
	std::list <ResponseTimeFilterPostcodeSectorsResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeSectors_H_ */
