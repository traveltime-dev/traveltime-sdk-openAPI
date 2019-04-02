/*
 * ResponseBox.h
 *
 * 
 */

#ifndef _ResponseBox_H_
#define _ResponseBox_H_


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

class ResponseBox : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseBox();
	ResponseBox(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseBox();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	double getMinLat();

	/*! \brief Set 
	 */
	void setMinLat(double  min_lat);
	/*! \brief Get 
	 */
	double getMaxLat();

	/*! \brief Set 
	 */
	void setMaxLat(double  max_lat);
	/*! \brief Get 
	 */
	double getMinLng();

	/*! \brief Set 
	 */
	void setMinLng(double  min_lng);
	/*! \brief Get 
	 */
	double getMaxLng();

	/*! \brief Set 
	 */
	void setMaxLng(double  max_lng);

private:
	double min_lat;
	double max_lat;
	double min_lng;
	double max_lng;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseBox_H_ */
