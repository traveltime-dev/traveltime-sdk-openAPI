/*
 * RequestUnionOnIntersection.h
 *
 * 
 */

#ifndef _RequestUnionOnIntersection_H_
#define _RequestUnionOnIntersection_H_


#include <string>
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

class RequestUnionOnIntersection : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestUnionOnIntersection();
	RequestUnionOnIntersection(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestUnionOnIntersection();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::list<std::string> getSearchIds();

	/*! \brief Set 
	 */
	void setSearchIds(std::list <std::string> search_ids);

private:
	std::string id;
	std::list <std::string>search_ids;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestUnionOnIntersection_H_ */
