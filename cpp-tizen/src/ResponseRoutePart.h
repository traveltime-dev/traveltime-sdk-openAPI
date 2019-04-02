/*
 * ResponseRoutePart.h
 *
 * 
 */

#ifndef _ResponseRoutePart_H_
#define _ResponseRoutePart_H_


#include <string>
#include "Coords.h"
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

class ResponseRoutePart : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseRoutePart();
	ResponseRoutePart(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseRoutePart();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	ResponseTransportationMode getMode();

	/*! \brief Set 
	 */
	void setMode(ResponseTransportationMode  mode);
	/*! \brief Get 
	 */
	std::string getDirections();

	/*! \brief Set 
	 */
	void setDirections(std::string  directions);
	/*! \brief Get 
	 */
	int getDistance();

	/*! \brief Set 
	 */
	void setDistance(int  distance);
	/*! \brief Get 
	 */
	int getTravelTime();

	/*! \brief Set 
	 */
	void setTravelTime(int  travel_time);
	/*! \brief Get 
	 */
	std::list<Coords> getCoords();

	/*! \brief Set 
	 */
	void setCoords(std::list <Coords> coords);
	/*! \brief Get 
	 */
	std::string getDirection();

	/*! \brief Set 
	 */
	void setDirection(std::string  direction);
	/*! \brief Get 
	 */
	std::string getRoad();

	/*! \brief Set 
	 */
	void setRoad(std::string  road);
	/*! \brief Get 
	 */
	std::string getTurn();

	/*! \brief Set 
	 */
	void setTurn(std::string  turn);
	/*! \brief Get 
	 */
	std::string getLine();

	/*! \brief Set 
	 */
	void setLine(std::string  line);
	/*! \brief Get 
	 */
	std::string getDepartureStation();

	/*! \brief Set 
	 */
	void setDepartureStation(std::string  departure_station);
	/*! \brief Get 
	 */
	std::string getArrivalStation();

	/*! \brief Set 
	 */
	void setArrivalStation(std::string  arrival_station);
	/*! \brief Get 
	 */
	std::string getDepartsAt();

	/*! \brief Set 
	 */
	void setDepartsAt(std::string  departs_at);
	/*! \brief Get 
	 */
	std::string getArrivesAt();

	/*! \brief Set 
	 */
	void setArrivesAt(std::string  arrives_at);
	/*! \brief Get 
	 */
	int getNumStops();

	/*! \brief Set 
	 */
	void setNumStops(int  num_stops);

private:
	std::string id;
	std::string type;
	ResponseTransportationMode mode;
	std::string directions;
	int distance;
	int travel_time;
	std::list <Coords>coords;
	std::string direction;
	std::string road;
	std::string turn;
	std::string line;
	std::string departure_station;
	std::string arrival_station;
	std::string departs_at;
	std::string arrives_at;
	int num_stops;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseRoutePart_H_ */
