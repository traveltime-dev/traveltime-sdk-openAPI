package traveltimeplatform.client.model {

import traveltimeplatform.client.model.Coords;
import traveltimeplatform.client.model.RequestRangeNoMaxResults;
import traveltimeplatform.client.model.RequestTimeMapProperty;
import traveltimeplatform.client.model.RequestTransportation;

    [XmlRootNode(name="RequestTimeMapDepartureSearch")]
    public class RequestTimeMapDepartureSearch {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="coords")]
        public var coords: Coords = NaN;
                [XmlElement(name="transportation")]
        public var transportation: RequestTransportation = NaN;
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="departure_time")]
        public var departureTime: Date = null;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();
                [XmlElement(name="range")]
        public var range: RequestRangeNoMaxResults = NaN;

    public function toString(): String {
        var str: String = "RequestTimeMapDepartureSearch: ";
        str += " (id: " + id + ")";
        str += " (coords: " + coords + ")";
        str += " (transportation: " + transportation + ")";
        str += " (travelTime: " + travelTime + ")";
        str += " (departureTime: " + departureTime + ")";
        str += " (properties: " + properties + ")";
        str += " (range: " + range + ")";
        return str;
    }

}

}
