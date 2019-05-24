package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.Coords;
import org.openapitools.server.api.model.ResponseTransportationMode;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseRoutePart   {
  
  private String id;


  public enum TypeEnum {
    BASIC("basic"),
    START_END("start_end"),
    ROAD("road"),
    PUBLIC_TRANSPORT("public_transport");

    private String value;

    TypeEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return value;
    }
  }

  private TypeEnum type;
  private ResponseTransportationMode mode;
  private String directions;
  private Integer distance;
  private Integer travelTime;
  private List<Coords> coords = new ArrayList<>();
  private String direction;
  private String road;
  private String turn;
  private String line;
  private String departureStation;
  private String arrivalStation;
  private String departsAt;
  private String arrivesAt;
  private Integer numStops;

  public ResponseRoutePart () {

  }

  public ResponseRoutePart (String id, TypeEnum type, ResponseTransportationMode mode, String directions, Integer distance, Integer travelTime, List<Coords> coords, String direction, String road, String turn, String line, String departureStation, String arrivalStation, String departsAt, String arrivesAt, Integer numStops) {
    this.id = id;
    this.type = type;
    this.mode = mode;
    this.directions = directions;
    this.distance = distance;
    this.travelTime = travelTime;
    this.coords = coords;
    this.direction = direction;
    this.road = road;
    this.turn = turn;
    this.line = line;
    this.departureStation = departureStation;
    this.arrivalStation = arrivalStation;
    this.departsAt = departsAt;
    this.arrivesAt = arrivesAt;
    this.numStops = numStops;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("type")
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

    
  @JsonProperty("mode")
  public ResponseTransportationMode getMode() {
    return mode;
  }
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

    
  @JsonProperty("directions")
  public String getDirections() {
    return directions;
  }
  public void setDirections(String directions) {
    this.directions = directions;
  }

    
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

    
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

    
  @JsonProperty("coords")
  public List<Coords> getCoords() {
    return coords;
  }
  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

    
  @JsonProperty("direction")
  public String getDirection() {
    return direction;
  }
  public void setDirection(String direction) {
    this.direction = direction;
  }

    
  @JsonProperty("road")
  public String getRoad() {
    return road;
  }
  public void setRoad(String road) {
    this.road = road;
  }

    
  @JsonProperty("turn")
  public String getTurn() {
    return turn;
  }
  public void setTurn(String turn) {
    this.turn = turn;
  }

    
  @JsonProperty("line")
  public String getLine() {
    return line;
  }
  public void setLine(String line) {
    this.line = line;
  }

    
  @JsonProperty("departure_station")
  public String getDepartureStation() {
    return departureStation;
  }
  public void setDepartureStation(String departureStation) {
    this.departureStation = departureStation;
  }

    
  @JsonProperty("arrival_station")
  public String getArrivalStation() {
    return arrivalStation;
  }
  public void setArrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
  }

    
  @JsonProperty("departs_at")
  public String getDepartsAt() {
    return departsAt;
  }
  public void setDepartsAt(String departsAt) {
    this.departsAt = departsAt;
  }

    
  @JsonProperty("arrives_at")
  public String getArrivesAt() {
    return arrivesAt;
  }
  public void setArrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
  }

    
  @JsonProperty("num_stops")
  public Integer getNumStops() {
    return numStops;
  }
  public void setNumStops(Integer numStops) {
    this.numStops = numStops;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoutePart responseRoutePart = (ResponseRoutePart) o;
    return Objects.equals(id, responseRoutePart.id) &&
        Objects.equals(type, responseRoutePart.type) &&
        Objects.equals(mode, responseRoutePart.mode) &&
        Objects.equals(directions, responseRoutePart.directions) &&
        Objects.equals(distance, responseRoutePart.distance) &&
        Objects.equals(travelTime, responseRoutePart.travelTime) &&
        Objects.equals(coords, responseRoutePart.coords) &&
        Objects.equals(direction, responseRoutePart.direction) &&
        Objects.equals(road, responseRoutePart.road) &&
        Objects.equals(turn, responseRoutePart.turn) &&
        Objects.equals(line, responseRoutePart.line) &&
        Objects.equals(departureStation, responseRoutePart.departureStation) &&
        Objects.equals(arrivalStation, responseRoutePart.arrivalStation) &&
        Objects.equals(departsAt, responseRoutePart.departsAt) &&
        Objects.equals(arrivesAt, responseRoutePart.arrivesAt) &&
        Objects.equals(numStops, responseRoutePart.numStops);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, type, mode, directions, distance, travelTime, coords, direction, road, turn, line, departureStation, arrivalStation, departsAt, arrivesAt, numStops);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutePart {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    directions: ").append(toIndentedString(directions)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
    sb.append("    direction: ").append(toIndentedString(direction)).append("\n");
    sb.append("    road: ").append(toIndentedString(road)).append("\n");
    sb.append("    turn: ").append(toIndentedString(turn)).append("\n");
    sb.append("    line: ").append(toIndentedString(line)).append("\n");
    sb.append("    departureStation: ").append(toIndentedString(departureStation)).append("\n");
    sb.append("    arrivalStation: ").append(toIndentedString(arrivalStation)).append("\n");
    sb.append("    departsAt: ").append(toIndentedString(departsAt)).append("\n");
    sb.append("    arrivesAt: ").append(toIndentedString(arrivesAt)).append("\n");
    sb.append("    numStops: ").append(toIndentedString(numStops)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
