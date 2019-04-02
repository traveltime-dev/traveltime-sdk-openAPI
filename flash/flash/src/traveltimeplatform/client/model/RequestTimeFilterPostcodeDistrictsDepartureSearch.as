package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import traveltimeplatform.client.model.RequestTransportation;

    [XmlRootNode(name="RequestTimeFilterPostcodeDistrictsDepartureSearch")]
    public class RequestTimeFilterPostcodeDistrictsDepartureSearch {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="transportation")]
        public var transportation: RequestTransportation = NaN;
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="departure_time")]
        public var departureTime: Date = null;
                [XmlElement(name="reachable_postcodes_threshold")]
        public var reachablePostcodesThreshold: Number = 0.0;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();
                [XmlElement(name="range")]
        public var range: RequestRangeFull = NaN;

    public function toString(): String {
        var str: String = "RequestTimeFilterPostcodeDistrictsDepartureSearch: ";
        str += " (id: " + id + ")";
        str += " (transportation: " + transportation + ")";
        str += " (travelTime: " + travelTime + ")";
        str += " (departureTime: " + departureTime + ")";
        str += " (reachablePostcodesThreshold: " + reachablePostcodesThreshold + ")";
        str += " (properties: " + properties + ")";
        str += " (range: " + range + ")";
        return str;
    }

}

}
