package org.openapitools.client.model {


    [XmlRootNode(name="ResponseBox")]
    public class ResponseBox {
                [XmlElement(name="min_lat")]
        public var minLat: Number = 0.0;
                [XmlElement(name="max_lat")]
        public var maxLat: Number = 0.0;
                [XmlElement(name="min_lng")]
        public var minLng: Number = 0.0;
                [XmlElement(name="max_lng")]
        public var maxLng: Number = 0.0;

    public function toString(): String {
        var str: String = "ResponseBox: ";
        str += " (minLat: " + minLat + ")";
        str += " (maxLat: " + maxLat + ")";
        str += " (minLng: " + minLng + ")";
        str += " (maxLng: " + maxLng + ")";
        return str;
    }

}

}
