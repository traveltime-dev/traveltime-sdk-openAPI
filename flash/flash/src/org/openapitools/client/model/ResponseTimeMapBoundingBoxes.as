package org.openapitools.client.model {

import org.openapitools.client.model.ResponseTimeMapBoundingBoxesResult;

    [XmlRootNode(name="ResponseTimeMapBoundingBoxes")]
    public class ResponseTimeMapBoundingBoxes {
                // This declaration below of _results_obj_class is to force flash compiler to include this class
        private var _results_obj_class: Array = null;
        [XmlElementWrapper(name="results")]
        [XmlElements(name="results", type="Array")]
                public var results: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeMapBoundingBoxes: ";
        str += " (results: " + results + ")";
        return str;
    }

}

}
