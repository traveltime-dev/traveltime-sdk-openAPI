package org.openapitools.client.model {


    [XmlRootNode(name="ResponseMapInfoFeaturesPublicTransport")]
    public class ResponseMapInfoFeaturesPublicTransport {
                [XmlElement(name="date_start")]
        public var dateStart: Date = null;
                [XmlElement(name="date_end")]
        public var dateEnd: Date = null;

    public function toString(): String {
        var str: String = "ResponseMapInfoFeaturesPublicTransport: ";
        str += " (dateStart: " + dateStart + ")";
        str += " (dateEnd: " + dateEnd + ")";
        return str;
    }

}

}
