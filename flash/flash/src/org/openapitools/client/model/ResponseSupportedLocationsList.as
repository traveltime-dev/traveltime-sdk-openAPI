package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseSupportedLocation;

    public class ResponseSupportedLocationsList implements ListWrapper {
        // This declaration below of _ResponseSupportedLocations_obj_class is to force flash compiler to include this class
        private var _responseSupportedLocations_obj_class: org.openapitools.client.model.ResponseSupportedLocations = null;
        [XmlElements(name="responseSupportedLocations", type="org.openapitools.client.model.ResponseSupportedLocations")]
        public var responseSupportedLocations: Array = new Array();

        public function getList(): Array{
            return responseSupportedLocations;
        }

}

}
