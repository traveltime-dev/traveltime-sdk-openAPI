package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Gets or Sets RequestTimeFilterFastProperty
 */
public enum RequestTimeFilterFastProperty {
  
  TRAVEL_TIME("travel_time"),
  
  FARES("fares");

  private String value;

  RequestTimeFilterFastProperty(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestTimeFilterFastProperty fromValue(String value) {
    for (RequestTimeFilterFastProperty b : RequestTimeFilterFastProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

