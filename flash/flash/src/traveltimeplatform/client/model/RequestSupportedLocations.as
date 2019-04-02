package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestLocation;

    [XmlRootNode(name="RequestSupportedLocations")]
    public class RequestSupportedLocations {
                // This declaration below of _locations_obj_class is to force flash compiler to include this class
        private var _locations_obj_class: Array = null;
        [XmlElementWrapper(name="locations")]
        [XmlElements(name="locations", type="Array")]
                public var locations: Array = new Array();

    public function toString(): String {
        var str: String = "RequestSupportedLocations: ";
        str += " (locations: " + locations + ")";
        return str;
    }

}

}
