package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestTransportation  {
  
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

@XmlEnumValue("cycling") CYCLING(String.valueOf("cycling")), @XmlEnumValue("driving") DRIVING(String.valueOf("driving")), @XmlEnumValue("driving+train") DRIVING_TRAIN(String.valueOf("driving+train")), @XmlEnumValue("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport")), @XmlEnumValue("walking") WALKING(String.valueOf("walking")), @XmlEnumValue("coach") COACH(String.valueOf("coach")), @XmlEnumValue("bus") BUS(String.valueOf("bus")), @XmlEnumValue("train") TRAIN(String.valueOf("train")), @XmlEnumValue("ferry") FERRY(String.valueOf("ferry")), @XmlEnumValue("driving+ferry") DRIVING_FERRY(String.valueOf("driving+ferry")), @XmlEnumValue("cycling+ferry") CYCLING_FERRY(String.valueOf("cycling+ferry"));


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
  **/
  @JsonProperty("type")
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.value();
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public RequestTransportation type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
   * Get ptChangeDelay
   * @return ptChangeDelay
  **/
  @JsonProperty("pt_change_delay")
  public Integer getPtChangeDelay() {
    return ptChangeDelay;
  }

  public void setPtChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
  }

  public RequestTransportation ptChangeDelay(Integer ptChangeDelay) {
    this.ptChangeDelay = ptChangeDelay;
    return this;
  }

 /**
   * Get walkingTime
   * @return walkingTime
  **/
  @JsonProperty("walking_time")
  public Integer getWalkingTime() {
    return walkingTime;
  }

  public void setWalkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
  }

  public RequestTransportation walkingTime(Integer walkingTime) {
    this.walkingTime = walkingTime;
    return this;
  }

 /**
   * Get drivingTimeToStation
   * @return drivingTimeToStation
  **/
  @JsonProperty("driving_time_to_station")
  public Integer getDrivingTimeToStation() {
    return drivingTimeToStation;
  }

  public void setDrivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
  }

  public RequestTransportation drivingTimeToStation(Integer drivingTimeToStation) {
    this.drivingTimeToStation = drivingTimeToStation;
    return this;
  }

 /**
   * Get parkingTime
   * @return parkingTime
  **/
  @JsonProperty("parking_time")
  public Integer getParkingTime() {
    return parkingTime;
  }

  public void setParkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
  }

  public RequestTransportation parkingTime(Integer parkingTime) {
    this.parkingTime = parkingTime;
    return this;
  }

 /**
   * Get boardingTime
   * @return boardingTime
  **/
  @JsonProperty("boarding_time")
  public Integer getBoardingTime() {
    return boardingTime;
  }

  public void setBoardingTime(Integer boardingTime) {
    this.boardingTime = boardingTime;
  }

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

