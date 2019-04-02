package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.ResponseTransportationMode;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseRoutePart  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

@XmlEnumValue("basic") BASIC(String.valueOf("basic")), @XmlEnumValue("start_end") START_END(String.valueOf("start_end")), @XmlEnumValue("road") ROAD(String.valueOf("road")), @XmlEnumValue("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static TypeEnum fromValue(String v) {
        for (TypeEnum b : TypeEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + v + "'");
    }
}

  @ApiModelProperty(required = true, value = "")
  private TypeEnum type;

  @ApiModelProperty(required = true, value = "")
  private ResponseTransportationMode mode = null;

  @ApiModelProperty(required = true, value = "")
  private String directions;

  @ApiModelProperty(required = true, value = "")
  private Integer distance;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  private List<Coords> coords = new ArrayList<Coords>();

  @ApiModelProperty(value = "")
  private String direction;

  @ApiModelProperty(value = "")
  private String road;

  @ApiModelProperty(value = "")
  private String turn;

  @ApiModelProperty(value = "")
  private String line;

  @ApiModelProperty(value = "")
  private String departureStation;

  @ApiModelProperty(value = "")
  private String arrivalStation;

  @ApiModelProperty(value = "")
  private String departsAt;

  @ApiModelProperty(value = "")
  private String arrivesAt;

  @ApiModelProperty(value = "")
  private Integer numStops;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseRoutePart id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.value();
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public ResponseRoutePart type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
   * Get mode
   * @return mode
  **/
  @JsonProperty("mode")
  public ResponseTransportationMode getMode() {
    return mode;
  }

  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  public ResponseRoutePart mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

 /**
   * Get directions
   * @return directions
  **/
  @JsonProperty("directions")
  public String getDirections() {
    return directions;
  }

  public void setDirections(String directions) {
    this.directions = directions;
  }

  public ResponseRoutePart directions(String directions) {
    this.directions = directions;
    return this;
  }

 /**
   * Get distance
   * @return distance
  **/
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }

  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  public ResponseRoutePart distance(Integer distance) {
    this.distance = distance;
    return this;
  }

 /**
   * Get travelTime
   * @return travelTime
  **/
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public ResponseRoutePart travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
   * Get coords
   * @return coords
  **/
  @JsonProperty("coords")
  public List<Coords> getCoords() {
    return coords;
  }

  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

  public ResponseRoutePart coords(List<Coords> coords) {
    this.coords = coords;
    return this;
  }

  public ResponseRoutePart addCoordsItem(Coords coordsItem) {
    this.coords.add(coordsItem);
    return this;
  }

 /**
   * Get direction
   * @return direction
  **/
  @JsonProperty("direction")
  public String getDirection() {
    return direction;
  }

  public void setDirection(String direction) {
    this.direction = direction;
  }

  public ResponseRoutePart direction(String direction) {
    this.direction = direction;
    return this;
  }

 /**
   * Get road
   * @return road
  **/
  @JsonProperty("road")
  public String getRoad() {
    return road;
  }

  public void setRoad(String road) {
    this.road = road;
  }

  public ResponseRoutePart road(String road) {
    this.road = road;
    return this;
  }

 /**
   * Get turn
   * @return turn
  **/
  @JsonProperty("turn")
  public String getTurn() {
    return turn;
  }

  public void setTurn(String turn) {
    this.turn = turn;
  }

  public ResponseRoutePart turn(String turn) {
    this.turn = turn;
    return this;
  }

 /**
   * Get line
   * @return line
  **/
  @JsonProperty("line")
  public String getLine() {
    return line;
  }

  public void setLine(String line) {
    this.line = line;
  }

  public ResponseRoutePart line(String line) {
    this.line = line;
    return this;
  }

 /**
   * Get departureStation
   * @return departureStation
  **/
  @JsonProperty("departure_station")
  public String getDepartureStation() {
    return departureStation;
  }

  public void setDepartureStation(String departureStation) {
    this.departureStation = departureStation;
  }

  public ResponseRoutePart departureStation(String departureStation) {
    this.departureStation = departureStation;
    return this;
  }

 /**
   * Get arrivalStation
   * @return arrivalStation
  **/
  @JsonProperty("arrival_station")
  public String getArrivalStation() {
    return arrivalStation;
  }

  public void setArrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
  }

  public ResponseRoutePart arrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
    return this;
  }

 /**
   * Get departsAt
   * @return departsAt
  **/
  @JsonProperty("departs_at")
  public String getDepartsAt() {
    return departsAt;
  }

  public void setDepartsAt(String departsAt) {
    this.departsAt = departsAt;
  }

  public ResponseRoutePart departsAt(String departsAt) {
    this.departsAt = departsAt;
    return this;
  }

 /**
   * Get arrivesAt
   * @return arrivesAt
  **/
  @JsonProperty("arrives_at")
  public String getArrivesAt() {
    return arrivesAt;
  }

  public void setArrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
  }

  public ResponseRoutePart arrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
    return this;
  }

 /**
   * Get numStops
   * @return numStops
  **/
  @JsonProperty("num_stops")
  public Integer getNumStops() {
    return numStops;
  }

  public void setNumStops(Integer numStops) {
    this.numStops = numStops;
  }

  public ResponseRoutePart numStops(Integer numStops) {
    this.numStops = numStops;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

