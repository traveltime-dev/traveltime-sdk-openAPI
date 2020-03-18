package org.openapitools.client.model {


    [XmlRootNode(name="RequestTransportation")]
    public class RequestTransportation {
                [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="pt_change_delay")]
        public var ptChangeDelay: Number = 0;
                [XmlElement(name="walking_time")]
        public var walkingTime: Number = 0;
                [XmlElement(name="driving_time_to_station")]
        public var drivingTimeToStation: Number = 0;
                [XmlElement(name="parking_time")]
        public var parkingTime: Number = 0;
                [XmlElement(name="boarding_time")]
        public var boardingTime: Number = 0;

    public function toString(): String {
        var str: String = "RequestTransportation: ";
        str += " (type: " + type + ")";
        str += " (ptChangeDelay: " + ptChangeDelay + ")";
        str += " (walkingTime: " + walkingTime + ")";
        str += " (drivingTimeToStation: " + drivingTimeToStation + ")";
        str += " (parkingTime: " + parkingTime + ")";
        str += " (boardingTime: " + boardingTime + ")";
        return str;
    }

}

}
