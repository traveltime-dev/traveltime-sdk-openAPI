package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTransportationMode;

    [XmlRootNode(name="ResponseDistanceBreakdownItem")]
    public class ResponseDistanceBreakdownItem {
                [XmlElement(name="mode")]
        public var mode: ResponseTransportationMode = NaN;
                [XmlElement(name="distance")]
        public var distance: Number = 0;

    public function toString(): String {
        var str: String = "ResponseDistanceBreakdownItem: ";
        str += " (mode: " + mode + ")";
        str += " (distance: " + distance + ")";
        return str;
    }

}

}
