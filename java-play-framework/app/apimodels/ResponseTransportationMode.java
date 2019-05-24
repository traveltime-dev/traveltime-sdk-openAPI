package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Gets or Sets ResponseTransportationMode
 */
public enum ResponseTransportationMode {
  
  CAR("car"),
  
  PARKING("parking"),
  
  BOARDING("boarding"),
  
  WALK("walk"),
  
  BIKE("bike"),
  
  TRAIN("train"),
  
  RAIL_NATIONAL("rail_national"),
  
  RAIL_OVERGROUND("rail_overground"),
  
  RAIL_UNDERGROUND("rail_underground"),
  
  RAIL_DLR("rail_dlr"),
  
  BUS("bus"),
  
  CABLE_CAR("cable_car"),
  
  PLANE("plane"),
  
  FERRY("ferry"),
  
  COACH("coach");

  private final String value;

  ResponseTransportationMode(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static ResponseTransportationMode fromValue(String value) {
    for (ResponseTransportationMode b : ResponseTransportationMode.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

