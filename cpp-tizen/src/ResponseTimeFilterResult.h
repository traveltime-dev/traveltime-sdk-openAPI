/*
 * ResponseTimeFilterResult.h
 *
 * 
 */

#ifndef _ResponseTimeFilterResult_H_
#define _ResponseTimeFilterResult_H_


#include <string>
#include "ResponseTimeFilterLocation.h"
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

class ResponseTimeFilterResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterResult();
	ResponseTimeFilterResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterResult();

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
	std::list<ResponseTimeFilterLocation> getLocations();

	/*! \brief Set 
	 */
	void setLocations(std::list <ResponseTimeFilterLocation> locations);
	/*! \brief Get 
	 */
	std::list<std::string> getUnreachable();

	/*! \brief Set 
	 */
	void setUnreachable(std::list <std::string> unreachable);

private:
	std::string search_id;
	std::list <ResponseTimeFilterLocation>locations;
	std::list <std::string>unreachable;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterResult_H_ */
