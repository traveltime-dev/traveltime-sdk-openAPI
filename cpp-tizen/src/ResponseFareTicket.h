/*
 * ResponseFareTicket.h
 *
 * 
 */

#ifndef _ResponseFareTicket_H_
#define _ResponseFareTicket_H_


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

class ResponseFareTicket : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseFareTicket();
	ResponseFareTicket(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseFareTicket();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	double getPrice();

	/*! \brief Set 
	 */
	void setPrice(double  price);
	/*! \brief Get 
	 */
	std::string getCurrency();

	/*! \brief Set 
	 */
	void setCurrency(std::string  currency);

private:
	std::string type;
	double price;
	std::string currency;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseFareTicket_H_ */
