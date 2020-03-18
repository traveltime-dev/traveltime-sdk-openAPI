package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseErrorList implements ListWrapper {
        // This declaration below of _ResponseError_obj_class is to force flash compiler to include this class
        private var _responseError_obj_class: org.openapitools.client.model.ResponseError = null;
        [XmlElements(name="responseError", type="org.openapitools.client.model.ResponseError")]
        public var responseError: Array = new Array();

        public function getList(): Array{
            return responseError;
        }

}

}
