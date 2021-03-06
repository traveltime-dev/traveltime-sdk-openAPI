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
 * Gets or Sets RequestTimeFilterPostcodesProperty
 */
public enum RequestTimeFilterPostcodesProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance");

  private String value;

  RequestTimeFilterPostcodesProperty(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestTimeFilterPostcodesProperty fromValue(String text) {
    for (RequestTimeFilterPostcodesProperty b : RequestTimeFilterPostcodesProperty.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }
}

