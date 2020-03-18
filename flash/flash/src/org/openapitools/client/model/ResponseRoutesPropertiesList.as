package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseFares;
import org.openapitools.client.model.ResponseRoute;

    public class ResponseRoutesPropertiesList implements ListWrapper {
        // This declaration below of _ResponseRoutesProperties_obj_class is to force flash compiler to include this class
        private var _responseRoutesProperties_obj_class: org.openapitools.client.model.ResponseRoutesProperties = null;
        [XmlElements(name="responseRoutesProperties", type="org.openapitools.client.model.ResponseRoutesProperties")]
        public var responseRoutesProperties: Array = new Array();

        public function getList(): Array{
            return responseRoutesProperties;
        }

}

}
