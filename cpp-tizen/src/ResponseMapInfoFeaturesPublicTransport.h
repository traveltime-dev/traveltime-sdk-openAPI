/*
 * ResponseMapInfoFeaturesPublicTransport.h
 *
 * 
 */

#ifndef _ResponseMapInfoFeaturesPublicTransport_H_
#define _ResponseMapInfoFeaturesPublicTransport_H_


#include <string>
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

class ResponseMapInfoFeaturesPublicTransport : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseMapInfoFeaturesPublicTransport();
	ResponseMapInfoFeaturesPublicTransport(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseMapInfoFeaturesPublicTransport();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getDateStart();

	/*! \brief Set 
	 */
	void setDateStart(std::string  date_start);
	/*! \brief Get 
	 */
	std::string getDateEnd();

	/*! \brief Set 
	 */
	void setDateEnd(std::string  date_end);

private:
	std::string date_start;
	std::string date_end;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseMapInfoFeaturesPublicTransport_H_ */
