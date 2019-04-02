package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseFares;
import traveltimeplatform.client.model.ResponseRoute;

    [XmlRootNode(name="ResponseRoutesProperties")]
    public class ResponseRoutesProperties {
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="distance")]
        public var distance: Number = 0;
                [XmlElement(name="fares")]
        public var fares: ResponseFares = NaN;
                [XmlElement(name="route")]
        public var route: ResponseRoute = NaN;

    public function toString(): String {
        var str: String = "ResponseRoutesProperties: ";
        str += " (travelTime: " + travelTime + ")";
        str += " (distance: " + distance + ")";
        str += " (fares: " + fares + ")";
        str += " (route: " + route + ")";
        return str;
    }

}

}
