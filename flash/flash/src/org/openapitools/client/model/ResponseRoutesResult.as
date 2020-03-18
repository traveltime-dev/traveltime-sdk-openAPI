package org.openapitools.client.model {

import org.openapitools.client.model.ResponseRoutesLocation;

    [XmlRootNode(name="ResponseRoutesResult")]
    public class ResponseRoutesResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _locations_obj_class is to force flash compiler to include this class
        private var _locations_obj_class: Array = null;
        [XmlElementWrapper(name="locations")]
        [XmlElements(name="locations", type="Array")]
                public var locations: Array = new Array();
                // This declaration below of _unreachable_obj_class is to force flash compiler to include this class
        private var _unreachable_obj_class: Array = null;
        [XmlElementWrapper(name="unreachable")]
        [XmlElements(name="unreachable", type="Array")]
                public var unreachable: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseRoutesResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (locations: " + locations + ")";
        str += " (unreachable: " + unreachable + ")";
        return str;
    }

}

}
