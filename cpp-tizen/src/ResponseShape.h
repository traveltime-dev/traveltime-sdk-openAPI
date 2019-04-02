/*
 * ResponseShape.h
 *
 * 
 */

#ifndef _ResponseShape_H_
#define _ResponseShape_H_


#include <string>
#include "Coords.h"
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

class ResponseShape : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseShape();
	ResponseShape(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseShape();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<Coords> getShell();

	/*! \brief Set 
	 */
	void setShell(std::list <Coords> shell);
	/*! \brief Get 
	 */
	std::list<std::list> getHoles();

	/*! \brief Set 
	 */
	void setHoles(std::list <std::list> holes);

private:
	std::list <Coords>shell;
	std::list <std::list>holes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseShape_H_ */
