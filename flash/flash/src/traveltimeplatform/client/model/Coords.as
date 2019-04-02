package traveltimeplatform.client.model {


    [XmlRootNode(name="Coords")]
    public class Coords {
                [XmlElement(name="lat")]
        public var lat: Number = 0.0;
                [XmlElement(name="lng")]
        public var lng: Number = 0.0;

    public function toString(): String {
        var str: String = "Coords: ";
        str += " (lat: " + lat + ")";
        str += " (lng: " + lng + ")";
        return str;
    }

}

}
