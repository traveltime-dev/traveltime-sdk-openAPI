package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseRoutePart  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("basic") @JsonProperty("basic") BASIC(String.valueOf("basic")), 
    @XmlEnumValue("start_end") @JsonProperty("start_end") START_END(String.valueOf("start_end")), 
    @XmlEnumValue("road") @JsonProperty("road") ROAD(String.valueOf("road")), 
    @XmlEnumValue("public_transport") @JsonProperty("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport"));

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

    public static TypeEnum fromValue(String value) {
        for (TypeEnum b : TypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(required = true, value = "")
  private TypeEnum type;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseTransportationMode mode;

  @ApiModelProperty(required = true, value = "")
  private String directions;

  @ApiModelProperty(required = true, value = "")
  private Integer distance;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  @Valid
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
  */
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public ResponseRoutePart id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get type
  * @return type
  */
  @JsonProperty("type")
  @NotNull
  public String getType() {
    return type == null ? null : type.value();
  }

  /**
   * Sets the <code>type</code> property.
   */
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public ResponseRoutePart type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
  * Get mode
  * @return mode
  */
  @JsonProperty("mode")
  @NotNull
  public ResponseTransportationMode getMode() {
    return mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
  public ResponseRoutePart mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

 /**
  * Get directions
  * @return directions
  */
  @JsonProperty("directions")
  @NotNull
  public String getDirections() {
    return directions;
  }

  /**
   * Sets the <code>directions</code> property.
   */
  public void setDirections(String directions) {
    this.directions = directions;
  }

  /**
   * Sets the <code>directions</code> property.
   */
  public ResponseRoutePart directions(String directions) {
    this.directions = directions;
    return this;
  }

 /**
  * Get distance
  * @return distance
  */
  @JsonProperty("distance")
  @NotNull
  public Integer getDistance() {
    return distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public ResponseRoutePart distance(Integer distance) {
    this.distance = distance;
    return this;
  }

 /**
  * Get travelTime
  * @return travelTime
  */
  @JsonProperty("travel_time")
  @NotNull
  public Integer getTravelTime() {
    return travelTime;
  }

  /**
   * Sets the <code>travelTime</code> property.
   */
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   * Sets the <code>travelTime</code> property.
   */
  public ResponseRoutePart travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
  * Get coords
  * @return coords
  */
  @JsonProperty("coords")
  @NotNull
  public List<Coords> getCoords() {
    return coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public ResponseRoutePart coords(List<Coords> coords) {
    this.coords = coords;
    return this;
  }

  /**
   * Adds a new item to the <code>coords</code> list.
   */
  public ResponseRoutePart addCoordsItem(Coords coordsItem) {
    this.coords.add(coordsItem);
    return this;
  }

 /**
  * Get direction
  * @return direction
  */
  @JsonProperty("direction")
  public String getDirection() {
    return direction;
  }

  /**
   * Sets the <code>direction</code> property.
   */
  public void setDirection(String direction) {
    this.direction = direction;
  }

  /**
   * Sets the <code>direction</code> property.
   */
  public ResponseRoutePart direction(String direction) {
    this.direction = direction;
    return this;
  }

 /**
  * Get road
  * @return road
  */
  @JsonProperty("road")
  public String getRoad() {
    return road;
  }

  /**
   * Sets the <code>road</code> property.
   */
  public void setRoad(String road) {
    this.road = road;
  }

  /**
   * Sets the <code>road</code> property.
   */
  public ResponseRoutePart road(String road) {
    this.road = road;
    return this;
  }

 /**
  * Get turn
  * @return turn
  */
  @JsonProperty("turn")
  public String getTurn() {
    return turn;
  }

  /**
   * Sets the <code>turn</code> property.
   */
  public void setTurn(String turn) {
    this.turn = turn;
  }

  /**
   * Sets the <code>turn</code> property.
   */
  public ResponseRoutePart turn(String turn) {
    this.turn = turn;
    return this;
  }

 /**
  * Get line
  * @return line
  */
  @JsonProperty("line")
  public String getLine() {
    return line;
  }

  /**
   * Sets the <code>line</code> property.
   */
  public void setLine(String line) {
    this.line = line;
  }

  /**
   * Sets the <code>line</code> property.
   */
  public ResponseRoutePart line(String line) {
    this.line = line;
    return this;
  }

 /**
  * Get departureStation
  * @return departureStation
  */
  @JsonProperty("departure_station")
  public String getDepartureStation() {
    return departureStation;
  }

  /**
   * Sets the <code>departureStation</code> property.
   */
  public void setDepartureStation(String departureStation) {
    this.departureStation = departureStation;
  }

  /**
   * Sets the <code>departureStation</code> property.
   */
  public ResponseRoutePart departureStation(String departureStation) {
    this.departureStation = departureStation;
    return this;
  }

 /**
  * Get arrivalStation
  * @return arrivalStation
  */
  @JsonProperty("arrival_station")
  public String getArrivalStation() {
    return arrivalStation;
  }

  /**
   * Sets the <code>arrivalStation</code> property.
   */
  public void setArrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
  }

  /**
   * Sets the <code>arrivalStation</code> property.
   */
  public ResponseRoutePart arrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
    return this;
  }

 /**
  * Get departsAt
  * @return departsAt
  */
  @JsonProperty("departs_at")
  public String getDepartsAt() {
    return departsAt;
  }

  /**
   * Sets the <code>departsAt</code> property.
   */
  public void setDepartsAt(String departsAt) {
    this.departsAt = departsAt;
  }

  /**
   * Sets the <code>departsAt</code> property.
   */
  public ResponseRoutePart departsAt(String departsAt) {
    this.departsAt = departsAt;
    return this;
  }

 /**
  * Get arrivesAt
  * @return arrivesAt
  */
  @JsonProperty("arrives_at")
  public String getArrivesAt() {
    return arrivesAt;
  }

  /**
   * Sets the <code>arrivesAt</code> property.
   */
  public void setArrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
  }

  /**
   * Sets the <code>arrivesAt</code> property.
   */
  public ResponseRoutePart arrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
    return this;
  }

 /**
  * Get numStops
  * @return numStops
  */
  @JsonProperty("num_stops")
  public Integer getNumStops() {
    return numStops;
  }

  /**
   * Sets the <code>numStops</code> property.
   */
  public void setNumStops(Integer numStops) {
    this.numStops = numStops;
  }

  /**
   * Sets the <code>numStops</code> property.
   */
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

