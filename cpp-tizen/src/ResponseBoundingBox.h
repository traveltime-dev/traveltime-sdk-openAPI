/*
 * ResponseBoundingBox.h
 *
 * 
 */

#ifndef _ResponseBoundingBox_H_
#define _ResponseBoundingBox_H_


#include <string>
#include "ResponseBox.h"
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

class ResponseBoundingBox : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseBoundingBox();
	ResponseBoundingBox(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseBoundingBox();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ResponseBox getEnvelope();

	/*! \brief Set 
	 */
	void setEnvelope(ResponseBox  envelope);
	/*! \brief Get 
	 */
	std::list<ResponseBox> getBoxes();

	/*! \brief Set 
	 */
	void setBoxes(std::list <ResponseBox> boxes);

private:
	ResponseBox envelope;
	std::list <ResponseBox>boxes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseBoundingBox_H_ */
