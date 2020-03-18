package org.openapitools.client.model {

import org.openapitools.client.model.ResponseShape;
import org.openapitools.client.model.ResponseTimeMapProperties;

    [XmlRootNode(name="ResponseTimeMapResult")]
    public class ResponseTimeMapResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _shapes_obj_class is to force flash compiler to include this class
        private var _shapes_obj_class: Array = null;
        [XmlElementWrapper(name="shapes")]
        [XmlElements(name="shapes", type="Array")]
                public var shapes: Array = new Array();
                [XmlElement(name="properties")]
        public var properties: ResponseTimeMapProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeMapResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (shapes: " + shapes + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
