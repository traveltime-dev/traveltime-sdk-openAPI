package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Gets or Sets RequestTimeFilterFastProperty
 */
public enum RequestTimeFilterFastProperty {
  
  TRAVEL_TIME("travel_time"),
  
  FARES("fares");

  private final String value;

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

