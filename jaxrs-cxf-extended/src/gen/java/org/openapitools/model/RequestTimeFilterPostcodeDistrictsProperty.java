package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Gets or Sets RequestTimeFilterPostcodeDistrictsProperty
 */
public enum RequestTimeFilterPostcodeDistrictsProperty {
  
  TRAVEL_TIME_REACHABLE("travel_time_reachable"),
  
  TRAVEL_TIME_ALL("travel_time_all"),
  
  COVERAGE("coverage");

  private String value;

  RequestTimeFilterPostcodeDistrictsProperty(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestTimeFilterPostcodeDistrictsProperty fromValue(String value) {
    for (RequestTimeFilterPostcodeDistrictsProperty b : RequestTimeFilterPostcodeDistrictsProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

