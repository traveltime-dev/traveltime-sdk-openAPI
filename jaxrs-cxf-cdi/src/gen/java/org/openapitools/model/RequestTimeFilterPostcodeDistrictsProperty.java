package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum RequestTimeFilterPostcodeDistrictsProperty {

    @XmlEnumValue("travel_time_reachable") TRAVEL_TIME_REACHABLE(String.valueOf("travel_time_reachable")), @XmlEnumValue("travel_time_all") TRAVEL_TIME_ALL(String.valueOf("travel_time_all")), @XmlEnumValue("coverage") COVERAGE(String.valueOf("coverage"));


    private String value;

    RequestTimeFilterPostcodeDistrictsProperty(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static RequestTimeFilterPostcodeDistrictsProperty fromValue(String v) {
        for (RequestTimeFilterPostcodeDistrictsProperty b : RequestTimeFilterPostcodeDistrictsProperty.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + v + "'");
    }
}



