/*
 * ResponseTimeFilterPostcodeSectorProperties.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeSectorProperties_H_
#define _ResponseTimeFilterPostcodeSectorProperties_H_


#include <string>
#include "ResponseTravelTimeStatistics.h"
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

class ResponseTimeFilterPostcodeSectorProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeSectorProperties();
	ResponseTimeFilterPostcodeSectorProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeSectorProperties();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ResponseTravelTimeStatistics getTravelTimeReachable();

	/*! \brief Set 
	 */
	void setTravelTimeReachable(ResponseTravelTimeStatistics  travel_time_reachable);
	/*! \brief Get 
	 */
	ResponseTravelTimeStatistics getTravelTimeAll();

	/*! \brief Set 
	 */
	void setTravelTimeAll(ResponseTravelTimeStatistics  travel_time_all);
	/*! \brief Get 
	 */
	double getCoverage();

	/*! \brief Set 
	 */
	void setCoverage(double  coverage);

private:
	ResponseTravelTimeStatistics travel_time_reachable;
	ResponseTravelTimeStatistics travel_time_all;
	double coverage;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeSectorProperties_H_ */
