package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseRoutesLocation;

    public class ResponseRoutesResultList implements ListWrapper {
        // This declaration below of _ResponseRoutesResult_obj_class is to force flash compiler to include this class
        private var _responseRoutesResult_obj_class: org.openapitools.client.model.ResponseRoutesResult = null;
        [XmlElements(name="responseRoutesResult", type="org.openapitools.client.model.ResponseRoutesResult")]
        public var responseRoutesResult: Array = new Array();

        public function getList(): Array{
            return responseRoutesResult;
        }

}

}
