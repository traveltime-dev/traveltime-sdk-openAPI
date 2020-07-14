package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2020-07-14T11:27:18.263Z[Etc/UTC]")
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

  private TypeEnum type;
  private Integer ptChangeDelay;
  private Integer walkingTime;
  private Integer drivingTimeToStation;
  private Integer parkingTime;
  private Integer boardingTime;

  /**
   **/
  public RequestTransportation type(TypeEnum type) {
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
  public RequestTransportation ptChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pt_change_delay")
  public Integer getPtChangeDelay() {
    return ptChangeDelay;
  }
  public void setPtChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
  }

  /**
   **/
  public RequestTransportation walkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("walking_time")
  public Integer getWalkingTime() {
    return walkingTime;
  }
  public void setWalkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
  }

  /**
   **/
  public RequestTransportation drivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("driving_time_to_station")
  public Integer getDrivingTimeToStation() {
    return drivingTimeToStation;
  }
  public void setDrivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
  }

  /**
   **/
  public RequestTransportation parkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("parking_time")
  public Integer getParkingTime() {
    return parkingTime;
  }
  public void setParkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
  }

  /**
   **/
  public RequestTransportation boardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("boarding_time")
  public Integer getBoardingTime() {
    return boardingTime;
  }
  public void setBoardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

