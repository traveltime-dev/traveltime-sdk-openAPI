package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTransportation   {
  

@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("cycling") CYCLING(String.valueOf("cycling")), @XmlEnumValue("driving") DRIVING(String.valueOf("driving")), @XmlEnumValue("driving+train") DRIVING_TRAIN(String.valueOf("driving+train")), @XmlEnumValue("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport")), @XmlEnumValue("walking") WALKING(String.valueOf("walking")), @XmlEnumValue("coach") COACH(String.valueOf("coach")), @XmlEnumValue("bus") BUS(String.valueOf("bus")), @XmlEnumValue("train") TRAIN(String.valueOf("train")), @XmlEnumValue("ferry") FERRY(String.valueOf("ferry")), @XmlEnumValue("driving+ferry") DRIVING_FERRY(String.valueOf("driving+ferry")), @XmlEnumValue("cycling+ferry") CYCLING_FERRY(String.valueOf("cycling+ferry"));


    private String value;

    TypeEnum(String v) {
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

  private TypeEnum type;

  private Boolean disableBorderCrossing;

  private Integer ptChangeDelay;

  private Integer walkingTime;

  private Integer drivingTimeToStation;

  private Integer cyclingTimeToStation;

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
  @NotNull
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }


  /**
   **/
  public RequestTransportation disableBorderCrossing(Boolean disableBorderCrossing) {
    this.disableBorderCrossing = disableBorderCrossing;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("disable_border_crossing")
  public Boolean getDisableBorderCrossing() {
    return disableBorderCrossing;
  }
  public void setDisableBorderCrossing(Boolean disableBorderCrossing) {
    this.disableBorderCrossing = disableBorderCrossing;
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
  public RequestTransportation cyclingTimeToStation(Integer cyclingTimeToStation) {
    this.cyclingTimeToStation = cyclingTimeToStation;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("cycling_time_to_station")
  public Integer getCyclingTimeToStation() {
    return cyclingTimeToStation;
  }
  public void setCyclingTimeToStation(Integer cyclingTimeToStation) {
    this.cyclingTimeToStation = cyclingTimeToStation;
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
    return Objects.equals(type, requestTransportation.type) &&
        Objects.equals(disableBorderCrossing, requestTransportation.disableBorderCrossing) &&
        Objects.equals(ptChangeDelay, requestTransportation.ptChangeDelay) &&
        Objects.equals(walkingTime, requestTransportation.walkingTime) &&
        Objects.equals(drivingTimeToStation, requestTransportation.drivingTimeToStation) &&
        Objects.equals(cyclingTimeToStation, requestTransportation.cyclingTimeToStation) &&
        Objects.equals(parkingTime, requestTransportation.parkingTime) &&
        Objects.equals(boardingTime, requestTransportation.boardingTime);
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

