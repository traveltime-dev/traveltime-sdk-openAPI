package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Coords;

    public class RequestLocationList implements ListWrapper {
        // This declaration below of _RequestLocation_obj_class is to force flash compiler to include this class
        private var _requestLocation_obj_class: org.openapitools.client.model.RequestLocation = null;
        [XmlElements(name="requestLocation", type="org.openapitools.client.model.RequestLocation")]
        public var requestLocation: Array = new Array();

        public function getList(): Array{
            return requestLocation;
        }

}

}
