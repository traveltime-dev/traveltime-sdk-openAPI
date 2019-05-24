package org.openapitools.model;



/**
 * Gets or Sets RequestTimeMapProperty
 */
public enum RequestTimeMapProperty {
  
  IS_ONLY_WALKING("is_only_walking");

  private String value;

  RequestTimeMapProperty(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static RequestTimeMapProperty fromValue(String value) {
    for (RequestTimeMapProperty b : RequestTimeMapProperty.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
  
}

