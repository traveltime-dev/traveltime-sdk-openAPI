package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.ResponseTransportationMode;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2020-07-14T11:27:08.641Z[Etc/UTC]")
public class ResponseRoutePart   {
  @JsonProperty("id")
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

    @JsonCreator
    public static TypeEnum fromValue(String text) {
      for (TypeEnum b : TypeEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + text + "'");
    }
  }

  @JsonProperty("type")
  private TypeEnum type;

  @JsonProperty("mode")
  private ResponseTransportationMode mode;

  @JsonProperty("directions")
  private String directions;

  @JsonProperty("distance")
  private Integer distance;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("coords")
  private List<Coords> coords = new ArrayList<Coords>();

  @JsonProperty("direction")
  private String direction;

  @JsonProperty("road")
  private String road;

  @JsonProperty("turn")
  private String turn;

  @JsonProperty("line")
  private String line;

  @JsonProperty("departure_station")
  private String departureStation;

  @JsonProperty("arrival_station")
  private String arrivalStation;

  @JsonProperty("departs_at")
  private String departsAt;

  @JsonProperty("arrives_at")
  private String arrivesAt;

  @JsonProperty("num_stops")
  private Integer numStops;

  /**
   **/
  public ResponseRoutePart id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public ResponseRoutePart type(TypeEnum type) {
    this.type = type;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("type")
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   **/
  public ResponseRoutePart mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("mode")
  public ResponseTransportationMode getMode() {
    return mode;
  }
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   **/
  public ResponseRoutePart directions(String directions) {
    this.directions = directions;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("directions")
  public String getDirections() {
    return directions;
  }
  public void setDirections(String directions) {
    this.directions = directions;
  }

  /**
   **/
  public ResponseRoutePart distance(Integer distance) {
    this.distance = distance;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   **/
  public ResponseRoutePart travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  public ResponseRoutePart coords(List<Coords> coords) {
    this.coords = coords;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("coords")
  public List<Coords> getCoords() {
    return coords;
  }
  public void setCoords(List<Coords> coords) {
    this.coords = coords;
  }

  /**
   **/
  public ResponseRoutePart direction(String direction) {
    this.direction = direction;
    return this;
  }

  
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
  public ResponseRoutePart road(String road) {
    this.road = road;
    return this;
  }

  
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
  public ResponseRoutePart turn(String turn) {
    this.turn = turn;
    return this;
  }

  
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
  public ResponseRoutePart line(String line) {
    this.line = line;
    return this;
  }

  
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
  public ResponseRoutePart departureStation(String departureStation) {
    this.departureStation = departureStation;
    return this;
  }

  
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
  public ResponseRoutePart arrivalStation(String arrivalStation) {
    this.arrivalStation = arrivalStation;
    return this;
  }

  
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
  public ResponseRoutePart departsAt(String departsAt) {
    this.departsAt = departsAt;
    return this;
  }

  
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
  public ResponseRoutePart arrivesAt(String arrivesAt) {
    this.arrivesAt = arrivesAt;
    return this;
  }

  
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
  public ResponseRoutePart numStops(Integer numStops) {
    this.numStops = numStops;
    return this;
  }

  
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

