package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class RequestTransportation   {
  

public enum TypeEnum {

    CYCLING(String.valueOf("cycling")), DRIVING(String.valueOf("driving")), DRIVING_TRAIN(String.valueOf("driving+train")), PUBLIC_TRANSPORT(String.valueOf("public_transport")), WALKING(String.valueOf("walking")), COACH(String.valueOf("coach")), BUS(String.valueOf("bus")), TRAIN(String.valueOf("train")), FERRY(String.valueOf("ferry")), DRIVING_FERRY(String.valueOf("driving+ferry")), CYCLING_FERRY(String.valueOf("cycling+ferry"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
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

  private @Valid TypeEnum type;
  private @Valid Integer ptChangeDelay;
  private @Valid Integer walkingTime;
  private @Valid Integer drivingTimeToStation;
  private @Valid Integer parkingTime;
  private @Valid Integer boardingTime;

  /**
   **/
  public RequestTransportation type(TypeEnum type) {
    this.type = type;
    return this;
  }

  

  
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTransportation requestTransportation = (RequestTransportation) o;
    return Objects.equals(this.type, requestTransportation.type) &&
        Objects.equals(this.ptChangeDelay, requestTransportation.ptChangeDelay) &&
        Objects.equals(this.walkingTime, requestTransportation.walkingTime) &&
        Objects.equals(this.drivingTimeToStation, requestTransportation.drivingTimeToStation) &&
        Objects.equals(this.parkingTime, requestTransportation.parkingTime) &&
        Objects.equals(this.boardingTime, requestTransportation.boardingTime);
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

