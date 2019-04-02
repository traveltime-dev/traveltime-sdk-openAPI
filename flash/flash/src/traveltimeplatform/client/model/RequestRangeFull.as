package traveltimeplatform.client.model {


    [XmlRootNode(name="RequestRangeFull")]
    public class RequestRangeFull {
                [XmlElement(name="enabled")]
        public var enabled: Boolean = false;
                [XmlElement(name="max_results")]
        public var maxResults: Number = 0;
                [XmlElement(name="width")]
        public var width: Number = 0;

    public function toString(): String {
        var str: String = "RequestRangeFull: ";
        str += " (enabled: " + enabled + ")";
        str += " (maxResults: " + maxResults + ")";
        str += " (width: " + width + ")";
        return str;
    }

}

}
