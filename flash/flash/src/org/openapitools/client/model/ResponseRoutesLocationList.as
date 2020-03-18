package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseRoutesProperties;

    public class ResponseRoutesLocationList implements ListWrapper {
        // This declaration below of _ResponseRoutesLocation_obj_class is to force flash compiler to include this class
        private var _responseRoutesLocation_obj_class: org.openapitools.client.model.ResponseRoutesLocation = null;
        [XmlElements(name="responseRoutesLocation", type="org.openapitools.client.model.ResponseRoutesLocation")]
        public var responseRoutesLocation: Array = new Array();

        public function getList(): Array{
            return responseRoutesLocation;
        }

}

}
