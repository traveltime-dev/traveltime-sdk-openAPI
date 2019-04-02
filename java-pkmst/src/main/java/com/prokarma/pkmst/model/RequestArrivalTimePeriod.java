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
 * Gets or Sets RequestArrivalTimePeriod
 */
public enum RequestArrivalTimePeriod {
  
  WEEKDAY_MORNING("weekday_morning");

  private String value;

  RequestArrivalTimePeriod(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestArrivalTimePeriod fromValue(String text) {
    for (RequestArrivalTimePeriod b : RequestArrivalTimePeriod.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}

