package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonValue;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

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
  public static RequestArrivalTimePeriod fromValue(String value) {
    for (RequestArrivalTimePeriod b : RequestArrivalTimePeriod.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

