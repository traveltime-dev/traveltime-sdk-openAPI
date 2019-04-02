package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonValue;




/**
* Gets or Sets RequestTimeFilterPostcodeSectorsProperty
*/
public enum RequestTimeFilterPostcodeSectorsProperty {
    
        TRAVEL_TIME_REACHABLE("travel_time_reachable"),
        
        TRAVEL_TIME_ALL("travel_time_all"),
        
        COVERAGE("coverage");

private String value;

RequestTimeFilterPostcodeSectorsProperty(String value) {
this.value = value;
}

@Override
@JsonValue
public String toString() {
return String.valueOf(value);
}

@JsonCreator
public static RequestTimeFilterPostcodeSectorsProperty fromValue(String text) {
for (RequestTimeFilterPostcodeSectorsProperty b : RequestTimeFilterPostcodeSectorsProperty.values()) {
if (String.valueOf(b.value).equals(text)) {
return b;
}
}
throw new IllegalArgumentException("Unexpected value '" + text + "'");
}
}


