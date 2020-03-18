package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2020-03-18T08:51:06.736Z[Etc/UTC]")
public class ResponseRoutePart   {
  
  private String id;

  /**
   * Gets or Sets type
   */
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
      return String.valueOf(value);
    }
  }

  private TypeEnum type;
  private ResponseTransportationMode mode;
  private String directions;
  private Integer distance;
  private Integer travelTime;
  private List<Coords> coords = new ArrayList<Coords>();
  private String direction;
  private String road;
  private String turn;
  private String line;
  private String departureStation;
  private String arrivalStation;
  private String departsAt;
  private String arrivesAt;
  private Integer numStops;

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("type")
  @NotNull
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("mode")
  @NotNull
  public ResponseTransportationMode getMode() {
    return mode;
  }
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("directions")
  @NotNull
  public String getDirections() {
    return directions;
  }
  public void setDirections(String directions) {
    this.directions = directions;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("distance")
  @NotNull
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  @NotNull
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("coords")
  @NotNull
  public List<Coords> getCoords() {
    return coords;
  }
  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("direction")
  public String getDirection() {
    return direction;
  }
  public void setDirection(String direction) {
    this.direction = direction;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("road")
  public String getRoad() {
    return road;
  }
  public void setRoad(String road) {
    this.road = road;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("turn")
  public String getTurn() {
    return turn;
  }
  public void setTurn(String turn) {
    this.turn = turn;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("line")
  public String getLine() {
    return line;
  }
  public void setLine(String line) {
    this.line = line;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_station")
  public String getDepartureStation() {
    return departureStation;
  }
  public void setDepartureStation(String departureStation) {
    this.departureStation = departureStation;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_station")
  public String getArrivalStation() {
    return arrivalStation;
  }
  public void setArrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departs_at")
  public String getDepartsAt() {
    return departsAt;
  }
  public void setDepartsAt(String departsAt) {
    this.departsAt = departsAt;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrives_at")
  public String getArrivesAt() {
    return arrivesAt;
  }
  public void setArrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("num_stops")
  public Integer getNumStops() {
    return numStops;
  }
  public void setNumStops(Integer numStops) {
    this.numStops = numStops;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

