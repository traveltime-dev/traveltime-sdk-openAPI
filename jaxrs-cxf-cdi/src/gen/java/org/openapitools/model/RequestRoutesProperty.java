package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum RequestRoutesProperty {

    @XmlEnumValue("travel_time") TRAVEL_TIME(String.valueOf("travel_time")), @XmlEnumValue("distance") DISTANCE(String.valueOf("distance")), @XmlEnumValue("fares") FARES(String.valueOf("fares")), @XmlEnumValue("route") ROUTE(String.valueOf("route"));


    private String value;

    RequestRoutesProperty(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static RequestRoutesProperty fromValue(String v) {
        for (RequestRoutesProperty b : RequestRoutesProperty.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + v + "'");
    }
}



