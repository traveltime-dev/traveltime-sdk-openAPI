/*
 * RequestTransportation.h
 *
 * 
 */

#ifndef _RequestTransportation_H_
#define _RequestTransportation_H_


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

class RequestTransportation : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTransportation();
	RequestTransportation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTransportation();

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
	bool getDisableBorderCrossing();

	/*! \brief Set 
	 */
	void setDisableBorderCrossing(bool  disable_border_crossing);
	/*! \brief Get 
	 */
	int getPtChangeDelay();

	/*! \brief Set 
	 */
	void setPtChangeDelay(int  pt_change_delay);
	/*! \brief Get 
	 */
	int getWalkingTime();

	/*! \brief Set 
	 */
	void setWalkingTime(int  walking_time);
	/*! \brief Get 
	 */
	int getDrivingTimeToStation();

	/*! \brief Set 
	 */
	void setDrivingTimeToStation(int  driving_time_to_station);
	/*! \brief Get 
	 */
	int getCyclingTimeToStation();

	/*! \brief Set 
	 */
	void setCyclingTimeToStation(int  cycling_time_to_station);
	/*! \brief Get 
	 */
	int getParkingTime();

	/*! \brief Set 
	 */
	void setParkingTime(int  parking_time);
	/*! \brief Get 
	 */
	int getBoardingTime();

	/*! \brief Set 
	 */
	void setBoardingTime(int  boarding_time);

private:
	std::string type;
	bool disable_border_crossing;
	int pt_change_delay;
	int walking_time;
	int driving_time_to_station;
	int cycling_time_to_station;
	int parking_time;
	int boarding_time;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTransportation_H_ */
