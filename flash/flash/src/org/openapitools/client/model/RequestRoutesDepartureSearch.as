package org.openapitools.client.model {

import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestRoutesProperty;
import org.openapitools.client.model.RequestTransportation;

    [XmlRootNode(name="RequestRoutesDepartureSearch")]
    public class RequestRoutesDepartureSearch {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="departure_location_id")]
        public var departureLocationId: String = null;
                // This declaration below of _arrivalLocationIds_obj_class is to force flash compiler to include this class
        private var _arrivalLocationIds_obj_class: Array = null;
        [XmlElementWrapper(name="arrival_location_ids")]
        [XmlElements(name="arrivalLocationIds", type="Array")]
                public var arrivalLocationIds: Array = new Array();
                [XmlElement(name="transportation")]
        public var transportation: RequestTransportation = NaN;
                [XmlElement(name="departure_time")]
        public var departureTime: Date = null;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();
                [XmlElement(name="range")]
        public var range: RequestRangeFull = NaN;

    public function toString(): String {
        var str: String = "RequestRoutesDepartureSearch: ";
        str += " (id: " + id + ")";
        str += " (departureLocationId: " + departureLocationId + ")";
        str += " (arrivalLocationIds: " + arrivalLocationIds + ")";
        str += " (transportation: " + transportation + ")";
        str += " (departureTime: " + departureTime + ")";
        str += " (properties: " + properties + ")";
        str += " (range: " + range + ")";
        return str;
    }

}

}
