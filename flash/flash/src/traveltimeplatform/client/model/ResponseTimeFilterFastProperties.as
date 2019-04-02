package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseFaresFast;

    [XmlRootNode(name="ResponseTimeFilterFastProperties")]
    public class ResponseTimeFilterFastProperties {
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="fares")]
        public var fares: ResponseFaresFast = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeFilterFastProperties: ";
        str += " (travelTime: " + travelTime + ")";
        str += " (fares: " + fares + ")";
        return str;
    }

}

}
