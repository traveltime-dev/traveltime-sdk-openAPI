package org.openapitools.client.model {

import org.openapitools.client.model.ResponseMapInfoMap;

    [XmlRootNode(name="ResponseMapInfo")]
    public class ResponseMapInfo {
                // This declaration below of _maps_obj_class is to force flash compiler to include this class
        private var _maps_obj_class: Array = null;
        [XmlElementWrapper(name="maps")]
        [XmlElements(name="maps", type="Array")]
                public var maps: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseMapInfo: ";
        str += " (maps: " + maps + ")";
        return str;
    }

}

}
