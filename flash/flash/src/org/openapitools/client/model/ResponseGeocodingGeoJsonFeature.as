package org.openapitools.client.model {

import org.openapitools.client.model.ResponseGeocodingGeometry;
import org.openapitools.client.model.ResponseGeocodingProperties;

    [XmlRootNode(name="ResponseGeocodingGeoJsonFeature")]
    public class ResponseGeocodingGeoJsonFeature {
                [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="geometry")]
        public var geometry: ResponseGeocodingGeometry = NaN;
                [XmlElement(name="properties")]
        public var properties: ResponseGeocodingProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseGeocodingGeoJsonFeature: ";
        str += " (type: " + type + ")";
        str += " (geometry: " + geometry + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
