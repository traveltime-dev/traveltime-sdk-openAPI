/*
 * ResponseFares.h
 *
 * 
 */

#ifndef _ResponseFares_H_
#define _ResponseFares_H_


#include <string>
#include "ResponseFareTicket.h"
#include "ResponseFaresBreakdownItem.h"
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

class ResponseFares : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseFares();
	ResponseFares(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseFares();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseFaresBreakdownItem> getBreakdown();

	/*! \brief Set 
	 */
	void setBreakdown(std::list <ResponseFaresBreakdownItem> breakdown);
	/*! \brief Get 
	 */
	std::list<ResponseFareTicket> getTicketsTotal();

	/*! \brief Set 
	 */
	void setTicketsTotal(std::list <ResponseFareTicket> tickets_total);

private:
	std::list <ResponseFaresBreakdownItem>breakdown;
	std::list <ResponseFareTicket>tickets_total;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseFares_H_ */
