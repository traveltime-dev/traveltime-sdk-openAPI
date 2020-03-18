package org.openapitools.client.model {

import org.openapitools.client.model.ResponseTimeMapProperties;

    [XmlRootNode(name="ResponseTimeMapWktResult")]
    public class ResponseTimeMapWktResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                [XmlElement(name="shape")]
        public var shape: String = null;
                [XmlElement(name="properties")]
        public var properties: ResponseTimeMapProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeMapWktResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (shape: " + shape + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
