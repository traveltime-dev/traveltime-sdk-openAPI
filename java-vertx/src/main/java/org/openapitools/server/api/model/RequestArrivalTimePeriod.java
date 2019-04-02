package org.openapitools.server.api.model;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Gets or Sets RequestArrivalTimePeriod
 */
public enum RequestArrivalTimePeriod {
  
  WEEKDAY_MORNING("weekday_morning");

  private String value;

  RequestArrivalTimePeriod(String value) {
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

  public static RequestArrivalTimePeriod fromValue(String text) {
    for (RequestArrivalTimePeriod b : RequestArrivalTimePeriod.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}