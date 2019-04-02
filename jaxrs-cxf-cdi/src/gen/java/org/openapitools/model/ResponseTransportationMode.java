package org.openapitools.model;

import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

@XmlType(name="")
@XmlEnum(String.class)
public enum ResponseTransportationMode {

    @XmlEnumValue("car") CAR(String.valueOf("car")), @XmlEnumValue("parking") PARKING(String.valueOf("parking")), @XmlEnumValue("boarding") BOARDING(String.valueOf("boarding")), @XmlEnumValue("walk") WALK(String.valueOf("walk")), @XmlEnumValue("bike") BIKE(String.valueOf("bike")), @XmlEnumValue("train") TRAIN(String.valueOf("train")), @XmlEnumValue("rail_national") RAIL_NATIONAL(String.valueOf("rail_national")), @XmlEnumValue("rail_overground") RAIL_OVERGROUND(String.valueOf("rail_overground")), @XmlEnumValue("rail_underground") RAIL_UNDERGROUND(String.valueOf("rail_underground")), @XmlEnumValue("rail_dlr") RAIL_DLR(String.valueOf("rail_dlr")), @XmlEnumValue("bus") BUS(String.valueOf("bus")), @XmlEnumValue("cable_car") CABLE_CAR(String.valueOf("cable_car")), @XmlEnumValue("plane") PLANE(String.valueOf("plane")), @XmlEnumValue("ferry") FERRY(String.valueOf("ferry")), @XmlEnumValue("coach") COACH(String.valueOf("coach"));


    private String value;

    ResponseTransportationMode(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static ResponseTransportationMode fromValue(String v) {
        for (ResponseTransportationMode b : ResponseTransportationMode.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + v + "'");
    }
}



