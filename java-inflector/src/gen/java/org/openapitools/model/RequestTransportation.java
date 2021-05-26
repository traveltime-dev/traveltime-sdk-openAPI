package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
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

  @JsonProperty("disable_border_crossing")
  private Boolean disableBorderCrossing;

  @JsonProperty("pt_change_delay")
  private Integer ptChangeDelay;

  @JsonProperty("walking_time")
  private Integer walkingTime;

  @JsonProperty("driving_time_to_station")
  private Integer drivingTimeToStation;

  @JsonProperty("cycling_time_to_station")
  private Integer cyclingTimeToStation;

  @JsonProperty("parking_time")
  private Integer parkingTime;

  @JsonProperty("boarding_time")
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

