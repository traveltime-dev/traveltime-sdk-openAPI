/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.Coords;
import org.openapitools.client.model.ResponseTransportationMode;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseRoutePart {
  
  @SerializedName("id")
  private String id = null;
  public enum TypeEnum {
     basic,  start_end,  road,  public_transport, 
  };
  @SerializedName("type")
  private TypeEnum type = null;
  @SerializedName("mode")
  private ResponseTransportationMode mode = null;
  @SerializedName("directions")
  private String directions = null;
  @SerializedName("distance")
  private Integer distance = null;
  @SerializedName("travel_time")
  private Integer travelTime = null;
  @SerializedName("coords")
  private List<Coords> coords = null;
  @SerializedName("direction")
  private String direction = null;
  @SerializedName("road")
  private String road = null;
  @SerializedName("turn")
  private String turn = null;
  @SerializedName("line")
  private String line = null;
  @SerializedName("departure_station")
  private String departureStation = null;
  @SerializedName("arrival_station")
  private String arrivalStation = null;
  @SerializedName("departs_at")
  private String departsAt = null;
  @SerializedName("arrives_at")
  private String arrivesAt = null;
  @SerializedName("num_stops")
  private Integer numStops = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ResponseTransportationMode getMode() {
    return mode;
  }
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getDirections() {
    return directions;
  }
  public void setDirections(String directions) {
    this.directions = directions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Coords> getCoords() {
    return coords;
  }
  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDirection() {
    return direction;
  }
  public void setDirection(String direction) {
    this.direction = direction;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getRoad() {
    return road;
  }
  public void setRoad(String road) {
    this.road = road;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTurn() {
    return turn;
  }
  public void setTurn(String turn) {
    this.turn = turn;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLine() {
    return line;
  }
  public void setLine(String line) {
    this.line = line;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDepartureStation() {
    return departureStation;
  }
  public void setDepartureStation(String departureStation) {
    this.departureStation = departureStation;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getArrivalStation() {
    return arrivalStation;
  }
  public void setArrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDepartsAt() {
    return departsAt;
  }
  public void setDepartsAt(String departsAt) {
    this.departsAt = departsAt;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getArrivesAt() {
    return arrivesAt;
  }
  public void setArrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this.id == null ? responseRoutePart.id == null : this.id.equals(responseRoutePart.id)) &&
        (this.type == null ? responseRoutePart.type == null : this.type.equals(responseRoutePart.type)) &&
        (this.mode == null ? responseRoutePart.mode == null : this.mode.equals(responseRoutePart.mode)) &&
        (this.directions == null ? responseRoutePart.directions == null : this.directions.equals(responseRoutePart.directions)) &&
        (this.distance == null ? responseRoutePart.distance == null : this.distance.equals(responseRoutePart.distance)) &&
        (this.travelTime == null ? responseRoutePart.travelTime == null : this.travelTime.equals(responseRoutePart.travelTime)) &&
        (this.coords == null ? responseRoutePart.coords == null : this.coords.equals(responseRoutePart.coords)) &&
        (this.direction == null ? responseRoutePart.direction == null : this.direction.equals(responseRoutePart.direction)) &&
        (this.road == null ? responseRoutePart.road == null : this.road.equals(responseRoutePart.road)) &&
        (this.turn == null ? responseRoutePart.turn == null : this.turn.equals(responseRoutePart.turn)) &&
        (this.line == null ? responseRoutePart.line == null : this.line.equals(responseRoutePart.line)) &&
        (this.departureStation == null ? responseRoutePart.departureStation == null : this.departureStation.equals(responseRoutePart.departureStation)) &&
        (this.arrivalStation == null ? responseRoutePart.arrivalStation == null : this.arrivalStation.equals(responseRoutePart.arrivalStation)) &&
        (this.departsAt == null ? responseRoutePart.departsAt == null : this.departsAt.equals(responseRoutePart.departsAt)) &&
        (this.arrivesAt == null ? responseRoutePart.arrivesAt == null : this.arrivesAt.equals(responseRoutePart.arrivesAt)) &&
        (this.numStops == null ? responseRoutePart.numStops == null : this.numStops.equals(responseRoutePart.numStops));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.mode == null ? 0: this.mode.hashCode());
    result = 31 * result + (this.directions == null ? 0: this.directions.hashCode());
    result = 31 * result + (this.distance == null ? 0: this.distance.hashCode());
    result = 31 * result + (this.travelTime == null ? 0: this.travelTime.hashCode());
    result = 31 * result + (this.coords == null ? 0: this.coords.hashCode());
    result = 31 * result + (this.direction == null ? 0: this.direction.hashCode());
    result = 31 * result + (this.road == null ? 0: this.road.hashCode());
    result = 31 * result + (this.turn == null ? 0: this.turn.hashCode());
    result = 31 * result + (this.line == null ? 0: this.line.hashCode());
    result = 31 * result + (this.departureStation == null ? 0: this.departureStation.hashCode());
    result = 31 * result + (this.arrivalStation == null ? 0: this.arrivalStation.hashCode());
    result = 31 * result + (this.departsAt == null ? 0: this.departsAt.hashCode());
    result = 31 * result + (this.arrivesAt == null ? 0: this.arrivesAt.hashCode());
    result = 31 * result + (this.numStops == null ? 0: this.numStops.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutePart {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  mode: ").append(mode).append("\n");
    sb.append("  directions: ").append(directions).append("\n");
    sb.append("  distance: ").append(distance).append("\n");
    sb.append("  travelTime: ").append(travelTime).append("\n");
    sb.append("  coords: ").append(coords).append("\n");
    sb.append("  direction: ").append(direction).append("\n");
    sb.append("  road: ").append(road).append("\n");
    sb.append("  turn: ").append(turn).append("\n");
    sb.append("  line: ").append(line).append("\n");
    sb.append("  departureStation: ").append(departureStation).append("\n");
    sb.append("  arrivalStation: ").append(arrivalStation).append("\n");
    sb.append("  departsAt: ").append(departsAt).append("\n");
    sb.append("  arrivesAt: ").append(arrivesAt).append("\n");
    sb.append("  numStops: ").append(numStops).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
