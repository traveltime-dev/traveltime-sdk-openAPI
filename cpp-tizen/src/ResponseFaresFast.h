/*
 * ResponseFaresFast.h
 *
 * 
 */

#ifndef _ResponseFaresFast_H_
#define _ResponseFaresFast_H_


#include <string>
#include "ResponseFareTicket.h"
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

class ResponseFaresFast : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseFaresFast();
	ResponseFaresFast(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseFaresFast();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseFareTicket> getTicketsTotal();

	/*! \brief Set 
	 */
	void setTicketsTotal(std::list <ResponseFareTicket> tickets_total);

private:
	std::list <ResponseFareTicket>tickets_total;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseFaresFast_H_ */
