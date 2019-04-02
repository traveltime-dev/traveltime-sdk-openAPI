/*
 * ResponseMapInfoFeatures.h
 *
 * 
 */

#ifndef _ResponseMapInfoFeatures_H_
#define _ResponseMapInfoFeatures_H_


#include <string>
#include "ResponseMapInfoFeaturesPublicTransport.h"
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

class ResponseMapInfoFeatures : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseMapInfoFeatures();
	ResponseMapInfoFeatures(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseMapInfoFeatures();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ResponseMapInfoFeaturesPublicTransport getPublicTransport();

	/*! \brief Set 
	 */
	void setPublicTransport(ResponseMapInfoFeaturesPublicTransport  public_transport);
	/*! \brief Get 
	 */
	bool getFares();

	/*! \brief Set 
	 */
	void setFares(bool  fares);
	/*! \brief Get 
	 */
	bool getPostcodes();

	/*! \brief Set 
	 */
	void setPostcodes(bool  postcodes);

private:
	ResponseMapInfoFeaturesPublicTransport public_transport;
	bool fares;
	bool postcodes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseMapInfoFeatures_H_ */
