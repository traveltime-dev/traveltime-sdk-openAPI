package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseGeocodingGeoJsonFeature;

    [XmlRootNode(name="ResponseGeocoding")]
    public class ResponseGeocoding {
                [XmlElement(name="type")]
        public var type: String = null;
                // This declaration below of _features_obj_class is to force flash compiler to include this class
        private var _features_obj_class: Array = null;
        [XmlElementWrapper(name="features")]
        [XmlElements(name="features", type="Array")]
                public var features: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseGeocoding: ";
        str += " (type: " + type + ")";
        str += " (features: " + features + ")";
        return str;
    }

}

}
