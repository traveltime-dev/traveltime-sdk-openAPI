package org.openapitools.model;

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

public class RequestTransportation  {
  
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("cycling") @JsonProperty("cycling") CYCLING(String.valueOf("cycling")), 
    @XmlEnumValue("driving") @JsonProperty("driving") DRIVING(String.valueOf("driving")), 
    @XmlEnumValue("driving+train") @JsonProperty("driving+train") DRIVING_TRAIN(String.valueOf("driving+train")), 
    @XmlEnumValue("public_transport") @JsonProperty("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport")), 
    @XmlEnumValue("walking") @JsonProperty("walking") WALKING(String.valueOf("walking")), 
    @XmlEnumValue("coach") @JsonProperty("coach") COACH(String.valueOf("coach")), 
    @XmlEnumValue("bus") @JsonProperty("bus") BUS(String.valueOf("bus")), 
    @XmlEnumValue("train") @JsonProperty("train") TRAIN(String.valueOf("train")), 
    @XmlEnumValue("ferry") @JsonProperty("ferry") FERRY(String.valueOf("ferry")), 
    @XmlEnumValue("driving+ferry") @JsonProperty("driving+ferry") DRIVING_FERRY(String.valueOf("driving+ferry")), 
    @XmlEnumValue("cycling+ferry") @JsonProperty("cycling+ferry") CYCLING_FERRY(String.valueOf("cycling+ferry"));

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

  @ApiModelProperty(value = "")
  private Integer ptChangeDelay;

  @ApiModelProperty(value = "")
  private Integer walkingTime;

  @ApiModelProperty(value = "")
  private Integer drivingTimeToStation;

  @ApiModelProperty(value = "")
  private Integer parkingTime;

  @ApiModelProperty(value = "")
  private Integer boardingTime;
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
  public RequestTransportation type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
  * Get ptChangeDelay
  * @return ptChangeDelay
  */
  @JsonProperty("pt_change_delay")
  public Integer getPtChangeDelay() {
    return ptChangeDelay;
  }

  /**
   * Sets the <code>ptChangeDelay</code> property.
   */
  public void setPtChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
  }

  /**
   * Sets the <code>ptChangeDelay</code> property.
   */
  public RequestTransportation ptChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
    return this;
  }

 /**
  * Get walkingTime
  * @return walkingTime
  */
  @JsonProperty("walking_time")
  public Integer getWalkingTime() {
    return walkingTime;
  }

  /**
   * Sets the <code>walkingTime</code> property.
   */
  public void setWalkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
  }

  /**
   * Sets the <code>walkingTime</code> property.
   */
  public RequestTransportation walkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
    return this;
  }

 /**
  * Get drivingTimeToStation
  * @return drivingTimeToStation
  */
  @JsonProperty("driving_time_to_station")
  public Integer getDrivingTimeToStation() {
    return drivingTimeToStation;
  }

  /**
   * Sets the <code>drivingTimeToStation</code> property.
   */
  public void setDrivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
  }

  /**
   * Sets the <code>drivingTimeToStation</code> property.
   */
  public RequestTransportation drivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
    return this;
  }

 /**
  * Get parkingTime
  * @return parkingTime
  */
  @JsonProperty("parking_time")
  public Integer getParkingTime() {
    return parkingTime;
  }

  /**
   * Sets the <code>parkingTime</code> property.
   */
  public void setParkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
  }

  /**
   * Sets the <code>parkingTime</code> property.
   */
  public RequestTransportation parkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
    return this;
  }

 /**
  * Get boardingTime
  * @return boardingTime
  */
  @JsonProperty("boarding_time")
  public Integer getBoardingTime() {
    return boardingTime;
  }

  /**
   * Sets the <code>boardingTime</code> property.
   */
  public void setBoardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
  }

  /**
   * Sets the <code>boardingTime</code> property.
   */
  public RequestTransportation boardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

