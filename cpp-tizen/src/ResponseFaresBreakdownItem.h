/*
 * ResponseFaresBreakdownItem.h
 *
 * 
 */

#ifndef _ResponseFaresBreakdownItem_H_
#define _ResponseFaresBreakdownItem_H_


#include <string>
#include "ResponseFareTicket.h"
#include "ResponseTransportationMode.h"
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

class ResponseFaresBreakdownItem : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseFaresBreakdownItem();
	ResponseFaresBreakdownItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseFaresBreakdownItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTransportationMode> getModes();

	/*! \brief Set 
	 */
	void setModes(std::list <ResponseTransportationMode> modes);
	/*! \brief Get 
	 */
	std::list<int> getRoutePartIds();

	/*! \brief Set 
	 */
	void setRoutePartIds(std::list <int> route_part_ids);
	/*! \brief Get 
	 */
	std::list<ResponseFareTicket> getTickets();

	/*! \brief Set 
	 */
	void setTickets(std::list <ResponseFareTicket> tickets);

private:
	std::list <ResponseTransportationMode>modes;
	std::list <int>route_part_ids;
	std::list <ResponseFareTicket>tickets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseFaresBreakdownItem_H_ */
