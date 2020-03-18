package org.openapitools.client.model {

import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestRoutesProperty;
import org.openapitools.client.model.RequestTransportation;

    [XmlRootNode(name="RequestRoutesArrivalSearch")]
    public class RequestRoutesArrivalSearch {
                [XmlElement(name="id")]
        public var id: String = null;
                // This declaration below of _departureLocationIds_obj_class is to force flash compiler to include this class
        private var _departureLocationIds_obj_class: Array = null;
        [XmlElementWrapper(name="departure_location_ids")]
        [XmlElements(name="departureLocationIds", type="Array")]
                public var departureLocationIds: Array = new Array();
                [XmlElement(name="arrival_location_id")]
        public var arrivalLocationId: String = null;
                [XmlElement(name="transportation")]
        public var transportation: RequestTransportation = NaN;
                [XmlElement(name="arrival_time")]
        public var arrivalTime: Date = null;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();
                [XmlElement(name="range")]
        public var range: RequestRangeFull = NaN;

    public function toString(): String {
        var str: String = "RequestRoutesArrivalSearch: ";
        str += " (id: " + id + ")";
        str += " (departureLocationIds: " + departureLocationIds + ")";
        str += " (arrivalLocationId: " + arrivalLocationId + ")";
        str += " (transportation: " + transportation + ")";
        str += " (arrivalTime: " + arrivalTime + ")";
        str += " (properties: " + properties + ")";
        str += " (range: " + range + ")";
        return str;
    }

}

}
