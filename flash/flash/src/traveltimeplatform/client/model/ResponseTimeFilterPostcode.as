package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcodesProperties;

    [XmlRootNode(name="ResponseTimeFilterPostcode")]
    public class ResponseTimeFilterPostcode {
                [XmlElement(name="code")]
        public var code: String = NaN;
                // This declaration below of _properties_obj_class is to force flash compiler to include this class
        private var _properties_obj_class: Array = null;
        [XmlElementWrapper(name="properties")]
        [XmlElements(name="properties", type="Array")]
                public var properties: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcode: ";
        str += " (code: " + code + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
