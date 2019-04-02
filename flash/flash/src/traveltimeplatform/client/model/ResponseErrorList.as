package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseErrorList implements ListWrapper {
        // This declaration below of _ResponseError_obj_class is to force flash compiler to include this class
        private var _responseError_obj_class: traveltimeplatform.client.model.ResponseError = null;
        [XmlElements(name="responseError", type="traveltimeplatform.client.model.ResponseError")]
        public var responseError: Array = new Array();

        public function getList(): Array{
            return responseError;
        }

}

}
