package org.openapitools.model;

import java.util.Objects;
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
public static RequestTimeFilterFastProperty fromValue(String text) {
for (RequestTimeFilterFastProperty b : RequestTimeFilterFastProperty.values()) {
if (String.valueOf(b.value).equals(text)) {
return b;
}
}
throw new IllegalArgumentException("Unexpected value '" + text + "'");
}
}


