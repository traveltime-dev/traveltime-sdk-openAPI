/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ResponseRoutePart.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ResponseRoutePart::ResponseRoutePart()
{
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Type = utility::conversions::to_string_t("");
    m_TypeIsSet = false;
    m_ModeIsSet = false;
    m_Directions = utility::conversions::to_string_t("");
    m_DirectionsIsSet = false;
    m_Distance = 0;
    m_DistanceIsSet = false;
    m_Travel_time = 0;
    m_Travel_timeIsSet = false;
    m_CoordsIsSet = false;
    m_Direction = utility::conversions::to_string_t("");
    m_DirectionIsSet = false;
    m_Road = utility::conversions::to_string_t("");
    m_RoadIsSet = false;
    m_Turn = utility::conversions::to_string_t("");
    m_TurnIsSet = false;
    m_Line = utility::conversions::to_string_t("");
    m_LineIsSet = false;
    m_Departure_station = utility::conversions::to_string_t("");
    m_Departure_stationIsSet = false;
    m_Arrival_station = utility::conversions::to_string_t("");
    m_Arrival_stationIsSet = false;
    m_Departs_at = utility::conversions::to_string_t("");
    m_Departs_atIsSet = false;
    m_Arrives_at = utility::conversions::to_string_t("");
    m_Arrives_atIsSet = false;
    m_Num_stops = 0;
    m_Num_stopsIsSet = false;
}

ResponseRoutePart::~ResponseRoutePart()
{
}

void ResponseRoutePart::validate()
{
    // TODO: implement validation
}

web::json::value ResponseRoutePart::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    if(m_TypeIsSet)
    {
        val[utility::conversions::to_string_t("type")] = ModelBase::toJson(m_Type);
    }
    if(m_ModeIsSet)
    {
        val[utility::conversions::to_string_t("mode")] = ModelBase::toJson(m_Mode);
    }
    if(m_DirectionsIsSet)
    {
        val[utility::conversions::to_string_t("directions")] = ModelBase::toJson(m_Directions);
    }
    if(m_DistanceIsSet)
    {
        val[utility::conversions::to_string_t("distance")] = ModelBase::toJson(m_Distance);
    }
    if(m_Travel_timeIsSet)
    {
        val[utility::conversions::to_string_t("travel_time")] = ModelBase::toJson(m_Travel_time);
    }
    if(m_CoordsIsSet)
    {
        val[utility::conversions::to_string_t("coords")] = ModelBase::toJson(m_Coords);
    }
    if(m_DirectionIsSet)
    {
        val[utility::conversions::to_string_t("direction")] = ModelBase::toJson(m_Direction);
    }
    if(m_RoadIsSet)
    {
        val[utility::conversions::to_string_t("road")] = ModelBase::toJson(m_Road);
    }
    if(m_TurnIsSet)
    {
        val[utility::conversions::to_string_t("turn")] = ModelBase::toJson(m_Turn);
    }
    if(m_LineIsSet)
    {
        val[utility::conversions::to_string_t("line")] = ModelBase::toJson(m_Line);
    }
    if(m_Departure_stationIsSet)
    {
        val[utility::conversions::to_string_t("departure_station")] = ModelBase::toJson(m_Departure_station);
    }
    if(m_Arrival_stationIsSet)
    {
        val[utility::conversions::to_string_t("arrival_station")] = ModelBase::toJson(m_Arrival_station);
    }
    if(m_Departs_atIsSet)
    {
        val[utility::conversions::to_string_t("departs_at")] = ModelBase::toJson(m_Departs_at);
    }
    if(m_Arrives_atIsSet)
    {
        val[utility::conversions::to_string_t("arrives_at")] = ModelBase::toJson(m_Arrives_at);
    }
    if(m_Num_stopsIsSet)
    {
        val[utility::conversions::to_string_t("num_stops")] = ModelBase::toJson(m_Num_stops);
    }

    return val;
}

bool ResponseRoutePart::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("id"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_id);
            setId(refVal_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("type")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("type"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_type;
            ok &= ModelBase::fromJson(fieldValue, refVal_type);
            setType(refVal_type);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("mode")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("mode"));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<ResponseTransportationMode> refVal_mode;
            ok &= ModelBase::fromJson(fieldValue, refVal_mode);
            setMode(refVal_mode);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("directions")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("directions"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_directions;
            ok &= ModelBase::fromJson(fieldValue, refVal_directions);
            setDirections(refVal_directions);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("distance")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("distance"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_distance;
            ok &= ModelBase::fromJson(fieldValue, refVal_distance);
            setDistance(refVal_distance);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("travel_time")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("travel_time"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_travel_time;
            ok &= ModelBase::fromJson(fieldValue, refVal_travel_time);
            setTravelTime(refVal_travel_time);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("coords")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("coords"));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<Coords>> refVal_coords;
            ok &= ModelBase::fromJson(fieldValue, refVal_coords);
            setCoords(refVal_coords);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("direction")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("direction"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_direction;
            ok &= ModelBase::fromJson(fieldValue, refVal_direction);
            setDirection(refVal_direction);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("road")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("road"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_road;
            ok &= ModelBase::fromJson(fieldValue, refVal_road);
            setRoad(refVal_road);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("turn")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("turn"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_turn;
            ok &= ModelBase::fromJson(fieldValue, refVal_turn);
            setTurn(refVal_turn);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("line")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("line"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_line;
            ok &= ModelBase::fromJson(fieldValue, refVal_line);
            setLine(refVal_line);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("departure_station")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departure_station"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_departure_station;
            ok &= ModelBase::fromJson(fieldValue, refVal_departure_station);
            setDepartureStation(refVal_departure_station);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("arrival_station")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("arrival_station"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_arrival_station;
            ok &= ModelBase::fromJson(fieldValue, refVal_arrival_station);
            setArrivalStation(refVal_arrival_station);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("departs_at")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("departs_at"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_departs_at;
            ok &= ModelBase::fromJson(fieldValue, refVal_departs_at);
            setDepartsAt(refVal_departs_at);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("arrives_at")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("arrives_at"));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_arrives_at;
            ok &= ModelBase::fromJson(fieldValue, refVal_arrives_at);
            setArrivesAt(refVal_arrives_at);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("num_stops")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("num_stops"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_num_stops;
            ok &= ModelBase::fromJson(fieldValue, refVal_num_stops);
            setNumStops(refVal_num_stops);
        }
    }
    return ok;
}

void ResponseRoutePart::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    if(m_TypeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("type"), m_Type));
    }
    if(m_ModeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("mode"), m_Mode));
    }
    if(m_DirectionsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("directions"), m_Directions));
    }
    if(m_DistanceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("distance"), m_Distance));
    }
    if(m_Travel_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("travel_time"), m_Travel_time));
    }
    if(m_CoordsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("coords"), m_Coords));
    }
    if(m_DirectionIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("direction"), m_Direction));
    }
    if(m_RoadIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("road"), m_Road));
    }
    if(m_TurnIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("turn"), m_Turn));
    }
    if(m_LineIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("line"), m_Line));
    }
    if(m_Departure_stationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departure_station"), m_Departure_station));
    }
    if(m_Arrival_stationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrival_station"), m_Arrival_station));
    }
    if(m_Departs_atIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("departs_at"), m_Departs_at));
    }
    if(m_Arrives_atIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("arrives_at"), m_Arrives_at));
    }
    if(m_Num_stopsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("num_stops"), m_Num_stops));
    }
}

bool ResponseRoutePart::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        utility::string_t refVal_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("id")), refVal_id );
        setId(refVal_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("type")))
    {
        utility::string_t refVal_type;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("type")), refVal_type );
        setType(refVal_type);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("mode")))
    {
        std::shared_ptr<ResponseTransportationMode> refVal_mode;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("mode")), refVal_mode );
        setMode(refVal_mode);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("directions")))
    {
        utility::string_t refVal_directions;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("directions")), refVal_directions );
        setDirections(refVal_directions);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("distance")))
    {
        int32_t refVal_distance;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("distance")), refVal_distance );
        setDistance(refVal_distance);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("travel_time")))
    {
        int32_t refVal_travel_time;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("travel_time")), refVal_travel_time );
        setTravelTime(refVal_travel_time);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("coords")))
    {
        std::vector<std::shared_ptr<Coords>> refVal_coords;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("coords")), refVal_coords );
        setCoords(refVal_coords);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("direction")))
    {
        utility::string_t refVal_direction;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("direction")), refVal_direction );
        setDirection(refVal_direction);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("road")))
    {
        utility::string_t refVal_road;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("road")), refVal_road );
        setRoad(refVal_road);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("turn")))
    {
        utility::string_t refVal_turn;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("turn")), refVal_turn );
        setTurn(refVal_turn);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("line")))
    {
        utility::string_t refVal_line;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("line")), refVal_line );
        setLine(refVal_line);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("departure_station")))
    {
        utility::string_t refVal_departure_station;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departure_station")), refVal_departure_station );
        setDepartureStation(refVal_departure_station);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("arrival_station")))
    {
        utility::string_t refVal_arrival_station;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrival_station")), refVal_arrival_station );
        setArrivalStation(refVal_arrival_station);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("departs_at")))
    {
        utility::string_t refVal_departs_at;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("departs_at")), refVal_departs_at );
        setDepartsAt(refVal_departs_at);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("arrives_at")))
    {
        utility::string_t refVal_arrives_at;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("arrives_at")), refVal_arrives_at );
        setArrivesAt(refVal_arrives_at);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("num_stops")))
    {
        int32_t refVal_num_stops;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("num_stops")), refVal_num_stops );
        setNumStops(refVal_num_stops);
    }
    return ok;
}

utility::string_t ResponseRoutePart::getId() const
{
    return m_Id;
}

void ResponseRoutePart::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool ResponseRoutePart::idIsSet() const
{
    return m_IdIsSet;
}

void ResponseRoutePart::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t ResponseRoutePart::getType() const
{
    return m_Type;
}

void ResponseRoutePart::setType(const utility::string_t& value)
{
    m_Type = value;
    m_TypeIsSet = true;
}

bool ResponseRoutePart::typeIsSet() const
{
    return m_TypeIsSet;
}

void ResponseRoutePart::unsetType()
{
    m_TypeIsSet = false;
}
std::shared_ptr<ResponseTransportationMode> ResponseRoutePart::getMode() const
{
    return m_Mode;
}

void ResponseRoutePart::setMode(const std::shared_ptr<ResponseTransportationMode>& value)
{
    m_Mode = value;
    m_ModeIsSet = true;
}

bool ResponseRoutePart::modeIsSet() const
{
    return m_ModeIsSet;
}

void ResponseRoutePart::unsetMode()
{
    m_ModeIsSet = false;
}
utility::string_t ResponseRoutePart::getDirections() const
{
    return m_Directions;
}

void ResponseRoutePart::setDirections(const utility::string_t& value)
{
    m_Directions = value;
    m_DirectionsIsSet = true;
}

bool ResponseRoutePart::directionsIsSet() const
{
    return m_DirectionsIsSet;
}

void ResponseRoutePart::unsetDirections()
{
    m_DirectionsIsSet = false;
}
int32_t ResponseRoutePart::getDistance() const
{
    return m_Distance;
}

void ResponseRoutePart::setDistance(int32_t value)
{
    m_Distance = value;
    m_DistanceIsSet = true;
}

bool ResponseRoutePart::distanceIsSet() const
{
    return m_DistanceIsSet;
}

void ResponseRoutePart::unsetDistance()
{
    m_DistanceIsSet = false;
}
int32_t ResponseRoutePart::getTravelTime() const
{
    return m_Travel_time;
}

void ResponseRoutePart::setTravelTime(int32_t value)
{
    m_Travel_time = value;
    m_Travel_timeIsSet = true;
}

bool ResponseRoutePart::travelTimeIsSet() const
{
    return m_Travel_timeIsSet;
}

void ResponseRoutePart::unsetTravel_time()
{
    m_Travel_timeIsSet = false;
}
std::vector<std::shared_ptr<Coords>>& ResponseRoutePart::getCoords()
{
    return m_Coords;
}

void ResponseRoutePart::setCoords(const std::vector<std::shared_ptr<Coords>>& value)
{
    m_Coords = value;
    m_CoordsIsSet = true;
}

bool ResponseRoutePart::coordsIsSet() const
{
    return m_CoordsIsSet;
}

void ResponseRoutePart::unsetCoords()
{
    m_CoordsIsSet = false;
}
utility::string_t ResponseRoutePart::getDirection() const
{
    return m_Direction;
}

void ResponseRoutePart::setDirection(const utility::string_t& value)
{
    m_Direction = value;
    m_DirectionIsSet = true;
}

bool ResponseRoutePart::directionIsSet() const
{
    return m_DirectionIsSet;
}

void ResponseRoutePart::unsetDirection()
{
    m_DirectionIsSet = false;
}
utility::string_t ResponseRoutePart::getRoad() const
{
    return m_Road;
}

void ResponseRoutePart::setRoad(const utility::string_t& value)
{
    m_Road = value;
    m_RoadIsSet = true;
}

bool ResponseRoutePart::roadIsSet() const
{
    return m_RoadIsSet;
}

void ResponseRoutePart::unsetRoad()
{
    m_RoadIsSet = false;
}
utility::string_t ResponseRoutePart::getTurn() const
{
    return m_Turn;
}

void ResponseRoutePart::setTurn(const utility::string_t& value)
{
    m_Turn = value;
    m_TurnIsSet = true;
}

bool ResponseRoutePart::turnIsSet() const
{
    return m_TurnIsSet;
}

void ResponseRoutePart::unsetTurn()
{
    m_TurnIsSet = false;
}
utility::string_t ResponseRoutePart::getLine() const
{
    return m_Line;
}

void ResponseRoutePart::setLine(const utility::string_t& value)
{
    m_Line = value;
    m_LineIsSet = true;
}

bool ResponseRoutePart::lineIsSet() const
{
    return m_LineIsSet;
}

void ResponseRoutePart::unsetLine()
{
    m_LineIsSet = false;
}
utility::string_t ResponseRoutePart::getDepartureStation() const
{
    return m_Departure_station;
}

void ResponseRoutePart::setDepartureStation(const utility::string_t& value)
{
    m_Departure_station = value;
    m_Departure_stationIsSet = true;
}

bool ResponseRoutePart::departureStationIsSet() const
{
    return m_Departure_stationIsSet;
}

void ResponseRoutePart::unsetDeparture_station()
{
    m_Departure_stationIsSet = false;
}
utility::string_t ResponseRoutePart::getArrivalStation() const
{
    return m_Arrival_station;
}

void ResponseRoutePart::setArrivalStation(const utility::string_t& value)
{
    m_Arrival_station = value;
    m_Arrival_stationIsSet = true;
}

bool ResponseRoutePart::arrivalStationIsSet() const
{
    return m_Arrival_stationIsSet;
}

void ResponseRoutePart::unsetArrival_station()
{
    m_Arrival_stationIsSet = false;
}
utility::string_t ResponseRoutePart::getDepartsAt() const
{
    return m_Departs_at;
}

void ResponseRoutePart::setDepartsAt(const utility::string_t& value)
{
    m_Departs_at = value;
    m_Departs_atIsSet = true;
}

bool ResponseRoutePart::departsAtIsSet() const
{
    return m_Departs_atIsSet;
}

void ResponseRoutePart::unsetDeparts_at()
{
    m_Departs_atIsSet = false;
}
utility::string_t ResponseRoutePart::getArrivesAt() const
{
    return m_Arrives_at;
}

void ResponseRoutePart::setArrivesAt(const utility::string_t& value)
{
    m_Arrives_at = value;
    m_Arrives_atIsSet = true;
}

bool ResponseRoutePart::arrivesAtIsSet() const
{
    return m_Arrives_atIsSet;
}

void ResponseRoutePart::unsetArrives_at()
{
    m_Arrives_atIsSet = false;
}
int32_t ResponseRoutePart::getNumStops() const
{
    return m_Num_stops;
}

void ResponseRoutePart::setNumStops(int32_t value)
{
    m_Num_stops = value;
    m_Num_stopsIsSet = true;
}

bool ResponseRoutePart::numStopsIsSet() const
{
    return m_Num_stopsIsSet;
}

void ResponseRoutePart::unsetNum_stops()
{
    m_Num_stopsIsSet = false;
}
}
}
}
}


