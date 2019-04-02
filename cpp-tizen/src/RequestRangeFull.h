/*
 * RequestRangeFull.h
 *
 * 
 */

#ifndef _RequestRangeFull_H_
#define _RequestRangeFull_H_


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

class RequestRangeFull : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestRangeFull();
	RequestRangeFull(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestRangeFull();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getEnabled();

	/*! \brief Set 
	 */
	void setEnabled(bool  enabled);
	/*! \brief Get 
	 */
	int getMaxResults();

	/*! \brief Set 
	 */
	void setMaxResults(int  max_results);
	/*! \brief Get 
	 */
	int getWidth();

	/*! \brief Set 
	 */
	void setWidth(int  width);

private:
	bool enabled;
	int max_results;
	int width;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestRangeFull_H_ */
