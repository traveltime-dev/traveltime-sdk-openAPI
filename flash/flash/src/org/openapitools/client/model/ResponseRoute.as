package org.openapitools.client.model {

import org.openapitools.client.model.ResponseRoutePart;

    [XmlRootNode(name="ResponseRoute")]
    public class ResponseRoute {
                [XmlElement(name="departure_time")]
        public var departureTime: Date = null;
                [XmlElement(name="arrival_time")]
        public var arrivalTime: Date = null;
                // This declaration below of _parts_obj_class is to force flash compiler to include this class
        private var _parts_obj_class: Array = null;
        [XmlElementWrapper(name="parts")]
        [XmlElements(name="parts", type="Array")]
                public var parts: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseRoute: ";
        str += " (departureTime: " + departureTime + ")";
        str += " (arrivalTime: " + arrivalTime + ")";
        str += " (parts: " + parts + ")";
        return str;
    }

}

}
