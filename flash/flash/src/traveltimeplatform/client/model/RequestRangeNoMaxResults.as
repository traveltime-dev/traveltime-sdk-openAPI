package traveltimeplatform.client.model {


    [XmlRootNode(name="RequestRangeNoMaxResults")]
    public class RequestRangeNoMaxResults {
                [XmlElement(name="enabled")]
        public var enabled: Boolean = false;
                [XmlElement(name="width")]
        public var width: Number = 0;

    public function toString(): String {
        var str: String = "RequestRangeNoMaxResults: ";
        str += " (enabled: " + enabled + ")";
        str += " (width: " + width + ")";
        return str;
    }

}

}
