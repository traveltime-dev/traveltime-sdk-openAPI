package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseGeocodingGeometry;
import traveltimeplatform.client.model.ResponseGeocodingProperties;

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
