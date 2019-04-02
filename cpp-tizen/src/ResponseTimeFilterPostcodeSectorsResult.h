/*
 * ResponseTimeFilterPostcodeSectorsResult.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeSectorsResult_H_
#define _ResponseTimeFilterPostcodeSectorsResult_H_


#include <string>
#include "ResponseTimeFilterPostcodeSector.h"
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

class ResponseTimeFilterPostcodeSectorsResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeSectorsResult();
	ResponseTimeFilterPostcodeSectorsResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeSectorsResult();

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
	std::list<ResponseTimeFilterPostcodeSector> getSectors();

	/*! \brief Set 
	 */
	void setSectors(std::list <ResponseTimeFilterPostcodeSector> sectors);

private:
	std::string search_id;
	std::list <ResponseTimeFilterPostcodeSector>sectors;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeSectorsResult_H_ */
