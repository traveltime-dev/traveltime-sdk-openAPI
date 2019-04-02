package traveltimeplatform.client.model {

import traveltimeplatform.client.model.Coords;
import traveltimeplatform.client.model.ResponseTransportationMode;

    [XmlRootNode(name="ResponseRoutePart")]
    public class ResponseRoutePart {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="mode")]
        public var mode: ResponseTransportationMode = NaN;
                [XmlElement(name="directions")]
        public var directions: String = null;
                [XmlElement(name="distance")]
        public var distance: Number = 0;
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                // This declaration below of _coords_obj_class is to force flash compiler to include this class
        private var _coords_obj_class: Array = null;
        [XmlElementWrapper(name="coords")]
        [XmlElements(name="coords", type="Array")]
                public var coords: Array = new Array();
                [XmlElement(name="direction")]
        public var direction: String = null;
                [XmlElement(name="road")]
        public var road: String = null;
                [XmlElement(name="turn")]
        public var turn: String = null;
                [XmlElement(name="line")]
        public var line: String = null;
                [XmlElement(name="departure_station")]
        public var departureStation: String = null;
                [XmlElement(name="arrival_station")]
        public var arrivalStation: String = null;
                [XmlElement(name="departs_at")]
        public var departsAt: String = null;
                [XmlElement(name="arrives_at")]
        public var arrivesAt: String = null;
                [XmlElement(name="num_stops")]
        public var numStops: Number = 0;

    public function toString(): String {
        var str: String = "ResponseRoutePart: ";
        str += " (id: " + id + ")";
        str += " (type: " + type + ")";
        str += " (mode: " + mode + ")";
        str += " (directions: " + directions + ")";
        str += " (distance: " + distance + ")";
        str += " (travelTime: " + travelTime + ")";
        str += " (coords: " + coords + ")";
        str += " (direction: " + direction + ")";
        str += " (road: " + road + ")";
        str += " (turn: " + turn + ")";
        str += " (line: " + line + ")";
        str += " (departureStation: " + departureStation + ")";
        str += " (arrivalStation: " + arrivalStation + ")";
        str += " (departsAt: " + departsAt + ")";
        str += " (arrivesAt: " + arrivesAt + ")";
        str += " (numStops: " + numStops + ")";
        return str;
    }

}

}
