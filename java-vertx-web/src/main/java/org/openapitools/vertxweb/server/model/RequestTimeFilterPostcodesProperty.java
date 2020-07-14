package org.openapitools.vertxweb.server.model;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Gets or Sets RequestTimeFilterPostcodesProperty
 */
public enum RequestTimeFilterPostcodesProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance");

  private String value;

  RequestTimeFilterPostcodesProperty(String value) {
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

  public static RequestTimeFilterPostcodesProperty fromValue(String value) {
    for (RequestTimeFilterPostcodesProperty b : RequestTimeFilterPostcodesProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}