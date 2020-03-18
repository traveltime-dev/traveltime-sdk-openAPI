package org.openapitools.client.model {


    [XmlRootNode(name="ResponseTimeFilterPostcodesProperties")]
    public class ResponseTimeFilterPostcodesProperties {
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="distance")]
        public var distance: Number = 0;

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodesProperties: ";
        str += " (travelTime: " + travelTime + ")";
        str += " (distance: " + distance + ")";
        return str;
    }

}

}
