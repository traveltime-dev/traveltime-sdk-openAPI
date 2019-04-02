package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestTransportation   {
  


  public enum TypeEnum {
    CYCLING("cycling"),
    DRIVING("driving"),
    DRIVING_TRAIN("driving+train"),
    PUBLIC_TRANSPORT("public_transport"),
    WALKING("walking"),
    COACH("coach"),
    BUS("bus"),
    TRAIN("train"),
    FERRY("ferry"),
    DRIVING_FERRY("driving+ferry"),
    CYCLING_FERRY("cycling+ferry");

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

  private TypeEnum type = ;
  private Integer ptChangeDelay = ;
  private Integer walkingTime = ;
  private Integer drivingTimeToStation = ;
  private Integer parkingTime = ;
  private Integer boardingTime = ;

  public RequestTransportation () {

  }

  public RequestTransportation (TypeEnum type, Integer ptChangeDelay, Integer walkingTime, Integer drivingTimeToStation, Integer parkingTime, Integer boardingTime) {
    this.type = type;
    this.ptChangeDelay = ptChangeDelay;
    this.walkingTime = walkingTime;
    this.drivingTimeToStation = drivingTimeToStation;
    this.parkingTime = parkingTime;
    this.boardingTime = boardingTime;
  }

    
  @JsonProperty("type")
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

    
  @JsonProperty("pt_change_delay")
  public Integer getPtChangeDelay() {
    return ptChangeDelay;
  }
  public void setPtChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
  }

    
  @JsonProperty("walking_time")
  public Integer getWalkingTime() {
    return walkingTime;
  }
  public void setWalkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
  }

    
  @JsonProperty("driving_time_to_station")
  public Integer getDrivingTimeToStation() {
    return drivingTimeToStation;
  }
  public void setDrivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
  }

    
  @JsonProperty("parking_time")
  public Integer getParkingTime() {
    return parkingTime;
  }
  public void setParkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
  }

    
  @JsonProperty("boarding_time")
  public Integer getBoardingTime() {
    return boardingTime;
  }
  public void setBoardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTransportation requestTransportation = (RequestTransportation) o;
    return Objects.equals(type, requestTransportation.type) &&
        Objects.equals(ptChangeDelay, requestTransportation.ptChangeDelay) &&
        Objects.equals(walkingTime, requestTransportation.walkingTime) &&
        Objects.equals(drivingTimeToStation, requestTransportation.drivingTimeToStation) &&
        Objects.equals(parkingTime, requestTransportation.parkingTime) &&
        Objects.equals(boardingTime, requestTransportation.boardingTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, ptChangeDelay, walkingTime, drivingTimeToStation, parkingTime, boardingTime);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTransportation {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    ptChangeDelay: ").append(toIndentedString(ptChangeDelay)).append("\n");
    sb.append("    walkingTime: ").append(toIndentedString(walkingTime)).append("\n");
    sb.append("    drivingTimeToStation: ").append(toIndentedString(drivingTimeToStation)).append("\n");
    sb.append("    parkingTime: ").append(toIndentedString(parkingTime)).append("\n");
    sb.append("    boardingTime: ").append(toIndentedString(boardingTime)).append("\n");
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
