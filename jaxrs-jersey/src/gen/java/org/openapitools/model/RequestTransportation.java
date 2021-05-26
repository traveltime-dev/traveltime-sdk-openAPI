/*
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


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * RequestTransportation
 */
@JsonPropertyOrder({
  RequestTransportation.JSON_PROPERTY_TYPE,
  RequestTransportation.JSON_PROPERTY_DISABLE_BORDER_CROSSING,
  RequestTransportation.JSON_PROPERTY_PT_CHANGE_DELAY,
  RequestTransportation.JSON_PROPERTY_WALKING_TIME,
  RequestTransportation.JSON_PROPERTY_DRIVING_TIME_TO_STATION,
  RequestTransportation.JSON_PROPERTY_CYCLING_TIME_TO_STATION,
  RequestTransportation.JSON_PROPERTY_PARKING_TIME,
  RequestTransportation.JSON_PROPERTY_BOARDING_TIME
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class RequestTransportation   {
  /**
   * Gets or Sets type
   */
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
      return String.valueOf(value);
    }

    @JsonCreator
    public static TypeEnum fromValue(String value) {
      for (TypeEnum b : TypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_TYPE = "type";
  @JsonProperty(JSON_PROPERTY_TYPE)
  private TypeEnum type;

  public static final String JSON_PROPERTY_DISABLE_BORDER_CROSSING = "disable_border_crossing";
  @JsonProperty(JSON_PROPERTY_DISABLE_BORDER_CROSSING)
  private Boolean disableBorderCrossing;

  public static final String JSON_PROPERTY_PT_CHANGE_DELAY = "pt_change_delay";
  @JsonProperty(JSON_PROPERTY_PT_CHANGE_DELAY)
  private Integer ptChangeDelay;

  public static final String JSON_PROPERTY_WALKING_TIME = "walking_time";
  @JsonProperty(JSON_PROPERTY_WALKING_TIME)
  private Integer walkingTime;

  public static final String JSON_PROPERTY_DRIVING_TIME_TO_STATION = "driving_time_to_station";
  @JsonProperty(JSON_PROPERTY_DRIVING_TIME_TO_STATION)
  private Integer drivingTimeToStation;

  public static final String JSON_PROPERTY_CYCLING_TIME_TO_STATION = "cycling_time_to_station";
  @JsonProperty(JSON_PROPERTY_CYCLING_TIME_TO_STATION)
  private Integer cyclingTimeToStation;

  public static final String JSON_PROPERTY_PARKING_TIME = "parking_time";
  @JsonProperty(JSON_PROPERTY_PARKING_TIME)
  private Integer parkingTime;

  public static final String JSON_PROPERTY_BOARDING_TIME = "boarding_time";
  @JsonProperty(JSON_PROPERTY_BOARDING_TIME)
  private Integer boardingTime;

  public RequestTransportation type(TypeEnum type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   **/
  @JsonProperty(value = "type")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public TypeEnum getType() {
    return type;
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public RequestTransportation disableBorderCrossing(Boolean disableBorderCrossing) {
    this.disableBorderCrossing = disableBorderCrossing;
    return this;
  }

  /**
   * Get disableBorderCrossing
   * @return disableBorderCrossing
   **/
  @JsonProperty(value = "disable_border_crossing")
  @ApiModelProperty(value = "")
  
  public Boolean getDisableBorderCrossing() {
    return disableBorderCrossing;
  }

  public void setDisableBorderCrossing(Boolean disableBorderCrossing) {
    this.disableBorderCrossing = disableBorderCrossing;
  }

  public RequestTransportation ptChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
    return this;
  }

  /**
   * Get ptChangeDelay
   * @return ptChangeDelay
   **/
  @JsonProperty(value = "pt_change_delay")
  @ApiModelProperty(value = "")
  
  public Integer getPtChangeDelay() {
    return ptChangeDelay;
  }

  public void setPtChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
  }

  public RequestTransportation walkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
    return this;
  }

  /**
   * Get walkingTime
   * @return walkingTime
   **/
  @JsonProperty(value = "walking_time")
  @ApiModelProperty(value = "")
  
  public Integer getWalkingTime() {
    return walkingTime;
  }

  public void setWalkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
  }

  public RequestTransportation drivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
    return this;
  }

  /**
   * Get drivingTimeToStation
   * @return drivingTimeToStation
   **/
  @JsonProperty(value = "driving_time_to_station")
  @ApiModelProperty(value = "")
  
  public Integer getDrivingTimeToStation() {
    return drivingTimeToStation;
  }

  public void setDrivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
  }

  public RequestTransportation cyclingTimeToStation(Integer cyclingTimeToStation) {
    this.cyclingTimeToStation = cyclingTimeToStation;
    return this;
  }

  /**
   * Get cyclingTimeToStation
   * @return cyclingTimeToStation
   **/
  @JsonProperty(value = "cycling_time_to_station")
  @ApiModelProperty(value = "")
  
  public Integer getCyclingTimeToStation() {
    return cyclingTimeToStation;
  }

  public void setCyclingTimeToStation(Integer cyclingTimeToStation) {
    this.cyclingTimeToStation = cyclingTimeToStation;
  }

  public RequestTransportation parkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
    return this;
  }

  /**
   * Get parkingTime
   * @return parkingTime
   **/
  @JsonProperty(value = "parking_time")
  @ApiModelProperty(value = "")
  
  public Integer getParkingTime() {
    return parkingTime;
  }

  public void setParkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
  }

  public RequestTransportation boardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
    return this;
  }

  /**
   * Get boardingTime
   * @return boardingTime
   **/
  @JsonProperty(value = "boarding_time")
  @ApiModelProperty(value = "")
  
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
    return Objects.equals(this.type, requestTransportation.type) &&
        Objects.equals(this.disableBorderCrossing, requestTransportation.disableBorderCrossing) &&
        Objects.equals(this.ptChangeDelay, requestTransportation.ptChangeDelay) &&
        Objects.equals(this.walkingTime, requestTransportation.walkingTime) &&
        Objects.equals(this.drivingTimeToStation, requestTransportation.drivingTimeToStation) &&
        Objects.equals(this.cyclingTimeToStation, requestTransportation.cyclingTimeToStation) &&
        Objects.equals(this.parkingTime, requestTransportation.parkingTime) &&
        Objects.equals(this.boardingTime, requestTransportation.boardingTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, disableBorderCrossing, ptChangeDelay, walkingTime, drivingTimeToStation, cyclingTimeToStation, parkingTime, boardingTime);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTransportation {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    disableBorderCrossing: ").append(toIndentedString(disableBorderCrossing)).append("\n");
    sb.append("    ptChangeDelay: ").append(toIndentedString(ptChangeDelay)).append("\n");
    sb.append("    walkingTime: ").append(toIndentedString(walkingTime)).append("\n");
    sb.append("    drivingTimeToStation: ").append(toIndentedString(drivingTimeToStation)).append("\n");
    sb.append("    cyclingTimeToStation: ").append(toIndentedString(cyclingTimeToStation)).append("\n");
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

