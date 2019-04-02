/*
 * ResponseRoute.h
 *
 * 
 */

#ifndef _ResponseRoute_H_
#define _ResponseRoute_H_


#include <string>
#include "ResponseRoutePart.h"
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

class ResponseRoute : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseRoute();
	ResponseRoute(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseRoute();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getDepartureTime();

	/*! \brief Set 
	 */
	void setDepartureTime(std::string  departure_time);
	/*! \brief Get 
	 */
	std::string getArrivalTime();

	/*! \brief Set 
	 */
	void setArrivalTime(std::string  arrival_time);
	/*! \brief Get 
	 */
	std::list<ResponseRoutePart> getParts();

	/*! \brief Set 
	 */
	void setParts(std::list <ResponseRoutePart> parts);

private:
	std::string departure_time;
	std::string arrival_time;
	std::list <ResponseRoutePart>parts;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseRoute_H_ */
