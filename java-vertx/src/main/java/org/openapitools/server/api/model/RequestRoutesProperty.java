package org.openapitools.server.api.model;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

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

  @JsonValue
  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestRoutesProperty fromValue(String text) {
    for (RequestRoutesProperty b : RequestRoutesProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}