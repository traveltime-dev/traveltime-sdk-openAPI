package org.openapitools.client.model {


    [XmlRootNode(name="ResponseGeocodingGeometry")]
    public class ResponseGeocodingGeometry {
                [XmlElement(name="type")]
        public var type: String = null;
                // This declaration below of _coordinates_obj_class is to force flash compiler to include this class
        private var _coordinates_obj_class: Array = null;
        [XmlElementWrapper(name="coordinates")]
        [XmlElements(name="coordinates", type="Array")]
                public var coordinates: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseGeocodingGeometry: ";
        str += " (type: " + type + ")";
        str += " (coordinates: " + coordinates + ")";
        return str;
    }

}

}
