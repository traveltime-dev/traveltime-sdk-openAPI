package traveltimeplatform.client.model {


    [XmlRootNode(name="ResponseFareTicket")]
    public class ResponseFareTicket {
                [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="price")]
        public var price: Number = 0.0;
                [XmlElement(name="currency")]
        public var currency: String = null;

    public function toString(): String {
        var str: String = "ResponseFareTicket: ";
        str += " (type: " + type + ")";
        str += " (price: " + price + ")";
        str += " (currency: " + currency + ")";
        return str;
    }

}

}
