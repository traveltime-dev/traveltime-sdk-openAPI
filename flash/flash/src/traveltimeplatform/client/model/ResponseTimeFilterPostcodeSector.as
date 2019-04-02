package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorProperties;

    [XmlRootNode(name="ResponseTimeFilterPostcodeSector")]
    public class ResponseTimeFilterPostcodeSector {
                [XmlElement(name="code")]
        public var code: String = NaN;
                [XmlElement(name="properties")]
        public var properties: ResponseTimeFilterPostcodeSectorProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodeSector: ";
        str += " (code: " + code + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
