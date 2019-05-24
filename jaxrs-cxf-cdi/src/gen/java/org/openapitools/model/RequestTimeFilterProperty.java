package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum RequestTimeFilterProperty {

    @XmlEnumValue("travel_time") TRAVEL_TIME(String.valueOf("travel_time")), @XmlEnumValue("distance") DISTANCE(String.valueOf("distance")), @XmlEnumValue("distance_breakdown") DISTANCE_BREAKDOWN(String.valueOf("distance_breakdown")), @XmlEnumValue("fares") FARES(String.valueOf("fares")), @XmlEnumValue("route") ROUTE(String.valueOf("route"));


    private String value;

    RequestTimeFilterProperty(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static RequestTimeFilterProperty fromValue(String value) {
        for (RequestTimeFilterProperty b : RequestTimeFilterProperty.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}



