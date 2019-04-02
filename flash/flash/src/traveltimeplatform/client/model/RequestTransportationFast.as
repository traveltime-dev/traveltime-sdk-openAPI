package traveltimeplatform.client.model {


    [XmlRootNode(name="RequestTransportationFast")]
    public class RequestTransportationFast {
                [XmlElement(name="type")]
        public var type: String = null;

    public function toString(): String {
        var str: String = "RequestTransportationFast: ";
        str += " (type: " + type + ")";
        return str;
    }

}

}
