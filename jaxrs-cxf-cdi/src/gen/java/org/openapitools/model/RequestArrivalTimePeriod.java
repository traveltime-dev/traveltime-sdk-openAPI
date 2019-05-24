package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum RequestArrivalTimePeriod {

    @XmlEnumValue("weekday_morning") WEEKDAY_MORNING(String.valueOf("weekday_morning"));


    private String value;

    RequestArrivalTimePeriod(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static RequestArrivalTimePeriod fromValue(String value) {
        for (RequestArrivalTimePeriod b : RequestArrivalTimePeriod.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}



