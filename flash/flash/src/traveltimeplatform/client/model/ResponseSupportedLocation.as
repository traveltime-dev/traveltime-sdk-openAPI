package traveltimeplatform.client.model {


    [XmlRootNode(name="ResponseSupportedLocation")]
    public class ResponseSupportedLocation {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="map_name")]
        public var mapName: String = null;

    public function toString(): String {
        var str: String = "ResponseSupportedLocation: ";
        str += " (id: " + id + ")";
        str += " (mapName: " + mapName + ")";
        return str;
    }

}

}
