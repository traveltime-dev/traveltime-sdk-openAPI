/*
 * ResponseError.h
 *
 * 
 */

#ifndef _ResponseError_H_
#define _ResponseError_H_


#include <string>
#include <list>
#include <map>
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

class ResponseError : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseError();
	ResponseError(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseError();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	int getHttpStatus();

	/*! \brief Set 
	 */
	void setHttpStatus(int  http_status);
	/*! \brief Get 
	 */
	int getErrorCode();

	/*! \brief Set 
	 */
	void setErrorCode(int  error_code);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getDocumentationLink();

	/*! \brief Set 
	 */
	void setDocumentationLink(std::string  documentation_link);
	/*! \brief Get 
	 */
	std::map<std::string, std::string> getAdditionalInfo();

	/*! \brief Set 
	 */
	void setAdditionalInfo(std::map <std::string, std::string> additional_info);

private:
	int http_status;
	int error_code;
	std::string description;
	std::string documentation_link;
	std::map <std::string, std::string>additional_info;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseError_H_ */
