package org.openapitools.client.model {

import org.openapitools.client.model.Coords;

    [XmlRootNode(name="RequestLocation")]
    public class RequestLocation {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="coords")]
        public var coords: Coords = NaN;

    public function toString(): String {
        var str: String = "RequestLocation: ";
        str += " (id: " + id + ")";
        str += " (coords: " + coords + ")";
        return str;
    }

}

}
