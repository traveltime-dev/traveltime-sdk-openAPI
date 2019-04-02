/*
 * ResponseMapInfo.h
 *
 * 
 */

#ifndef _ResponseMapInfo_H_
#define _ResponseMapInfo_H_


#include <string>
#include "ResponseMapInfoMap.h"
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

class ResponseMapInfo : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseMapInfo();
	ResponseMapInfo(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseMapInfo();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseMapInfoMap> getMaps();

	/*! \brief Set 
	 */
	void setMaps(std::list <ResponseMapInfoMap> maps);

private:
	std::list <ResponseMapInfoMap>maps;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseMapInfo_H_ */
