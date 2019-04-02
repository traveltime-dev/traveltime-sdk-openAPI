package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonValue;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Gets or Sets RequestRoutesProperty
 */
public enum RequestRoutesProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance"),
  
  FARES("fares"),
  
  ROUTE("route");

  private String value;

  RequestRoutesProperty(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestRoutesProperty fromValue(String text) {
    for (RequestRoutesProperty b : RequestRoutesProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}

