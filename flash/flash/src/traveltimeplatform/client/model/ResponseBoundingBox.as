package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseBox;

    [XmlRootNode(name="ResponseBoundingBox")]
    public class ResponseBoundingBox {
                [XmlElement(name="envelope")]
        public var envelope: ResponseBox = NaN;
                // This declaration below of _boxes_obj_class is to force flash compiler to include this class
        private var _boxes_obj_class: Array = null;
        [XmlElementWrapper(name="boxes")]
        [XmlElements(name="boxes", type="Array")]
                public var boxes: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseBoundingBox: ";
        str += " (envelope: " + envelope + ")";
        str += " (boxes: " + boxes + ")";
        return str;
    }

}

}
