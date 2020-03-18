package org.openapitools.client.model {

import org.openapitools.client.model.ResponseSupportedLocation;

    [XmlRootNode(name="ResponseSupportedLocations")]
    public class ResponseSupportedLocations {
                // This declaration below of _locations_obj_class is to force flash compiler to include this class
        private var _locations_obj_class: Array = null;
        [XmlElementWrapper(name="locations")]
        [XmlElements(name="locations", type="Array")]
                public var locations: Array = new Array();
                // This declaration below of _unsupportedLocations_obj_class is to force flash compiler to include this class
        private var _unsupportedLocations_obj_class: Array = null;
        [XmlElementWrapper(name="unsupported_locations")]
        [XmlElements(name="unsupportedLocations", type="Array")]
                public var unsupportedLocations: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseSupportedLocations: ";
        str += " (locations: " + locations + ")";
        str += " (unsupportedLocations: " + unsupportedLocations + ")";
        return str;
    }

}

}
