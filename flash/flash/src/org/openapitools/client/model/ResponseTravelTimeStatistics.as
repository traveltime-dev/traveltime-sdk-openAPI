package org.openapitools.client.model {


    [XmlRootNode(name="ResponseTravelTimeStatistics")]
    public class ResponseTravelTimeStatistics {
                [XmlElement(name="min")]
        public var min: Number = 0;
                [XmlElement(name="max")]
        public var max: Number = 0;
                [XmlElement(name="mean")]
        public var mean: Number = 0;
                [XmlElement(name="median")]
        public var median: Number = 0;

    public function toString(): String {
        var str: String = "ResponseTravelTimeStatistics: ";
        str += " (min: " + min + ")";
        str += " (max: " + max + ")";
        str += " (mean: " + mean + ")";
        str += " (median: " + median + ")";
        return str;
    }

}

}
