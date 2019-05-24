package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Gets or Sets RequestTimeFilterProperty
 */
public enum RequestTimeFilterProperty {
  
  TRAVEL_TIME("travel_time"),
  
  DISTANCE("distance"),
  
  DISTANCE_BREAKDOWN("distance_breakdown"),
  
  FARES("fares"),
  
  ROUTE("route");

  private final String value;

  RequestTimeFilterProperty(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RequestTimeFilterProperty fromValue(String value) {
    for (RequestTimeFilterProperty b : RequestTimeFilterProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

