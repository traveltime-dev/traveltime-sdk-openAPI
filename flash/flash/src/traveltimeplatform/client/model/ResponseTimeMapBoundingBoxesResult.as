package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseBoundingBox;
import traveltimeplatform.client.model.ResponseTimeMapProperties;

    [XmlRootNode(name="ResponseTimeMapBoundingBoxesResult")]
    public class ResponseTimeMapBoundingBoxesResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _boundingBoxes_obj_class is to force flash compiler to include this class
        private var _boundingBoxes_obj_class: Array = null;
        [XmlElementWrapper(name="bounding_boxes")]
        [XmlElements(name="boundingBoxes", type="Array")]
                public var boundingBoxes: Array = new Array();
                [XmlElement(name="properties")]
        public var properties: ResponseTimeMapProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeMapBoundingBoxesResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (boundingBoxes: " + boundingBoxes + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
