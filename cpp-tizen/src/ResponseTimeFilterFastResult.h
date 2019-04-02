/*
 * ResponseTimeFilterFastResult.h
 *
 * 
 */

#ifndef _ResponseTimeFilterFastResult_H_
#define _ResponseTimeFilterFastResult_H_


#include <string>
#include "ResponseTimeFilterFastLocation.h"
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

class ResponseTimeFilterFastResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterFastResult();
	ResponseTimeFilterFastResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterFastResult();

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
	std::list<ResponseTimeFilterFastLocation> getLocations();

	/*! \brief Set 
	 */
	void setLocations(std::list <ResponseTimeFilterFastLocation> locations);
	/*! \brief Get 
	 */
	std::list<std::string> getUnreachable();

	/*! \brief Set 
	 */
	void setUnreachable(std::list <std::string> unreachable);

private:
	std::string search_id;
	std::list <ResponseTimeFilterFastLocation>locations;
	std::list <std::string>unreachable;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterFastResult_H_ */
