package org.openapitools.client.model {

import org.openapitools.client.model.RequestArrivalTimePeriod;
import org.openapitools.client.model.RequestTimeFilterFastProperty;
import org.openapitools.client.model.RequestTransportationFast;

    [XmlRootNode(name="RequestTimeFilterFastArrivalOneToManySearch")]
    public class RequestTimeFilterFastArrivalOneToManySearch {
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
        public var transportation: RequestTransportationFast = NaN;
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="arrival_time_period")]
        public var arrivalTimePeriod: RequestArrivalTimePeriod = NaN;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();

    public function toString(): String {
        var str: String = "RequestTimeFilterFastArrivalOneToManySearch: ";
        str += " (id: " + id + ")";
        str += " (departureLocationId: " + departureLocationId + ")";
        str += " (arrivalLocationIds: " + arrivalLocationIds + ")";
        str += " (transportation: " + transportation + ")";
        str += " (travelTime: " + travelTime + ")";
        str += " (arrivalTimePeriod: " + arrivalTimePeriod + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
