package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestLocation;

    public class RequestSupportedLocationsList implements ListWrapper {
        // This declaration below of _RequestSupportedLocations_obj_class is to force flash compiler to include this class
        private var _requestSupportedLocations_obj_class: org.openapitools.client.model.RequestSupportedLocations = null;
        [XmlElements(name="requestSupportedLocations", type="org.openapitools.client.model.RequestSupportedLocations")]
        public var requestSupportedLocations: Array = new Array();

        public function getList(): Array{
            return requestSupportedLocations;
        }

}

}
