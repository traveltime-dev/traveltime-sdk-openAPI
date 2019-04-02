package org.openapitools.server.api.model;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

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

  private String value;

  ResponseTransportationMode(String value) {
    this.value = value;
  }

  @JsonValue
  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static ResponseTransportationMode fromValue(String text) {
    for (ResponseTransportationMode b : ResponseTransportationMode.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}