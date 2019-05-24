package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum RequestTimeFilterPostcodeSectorsProperty {

    @XmlEnumValue("travel_time_reachable") TRAVEL_TIME_REACHABLE(String.valueOf("travel_time_reachable")), @XmlEnumValue("travel_time_all") TRAVEL_TIME_ALL(String.valueOf("travel_time_all")), @XmlEnumValue("coverage") COVERAGE(String.valueOf("coverage"));


    private String value;

    RequestTimeFilterPostcodeSectorsProperty(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static RequestTimeFilterPostcodeSectorsProperty fromValue(String value) {
        for (RequestTimeFilterPostcodeSectorsProperty b : RequestTimeFilterPostcodeSectorsProperty.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}



