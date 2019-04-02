package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseRoutesLocation;

    public class ResponseRoutesResultList implements ListWrapper {
        // This declaration below of _ResponseRoutesResult_obj_class is to force flash compiler to include this class
        private var _responseRoutesResult_obj_class: traveltimeplatform.client.model.ResponseRoutesResult = null;
        [XmlElements(name="responseRoutesResult", type="traveltimeplatform.client.model.ResponseRoutesResult")]
        public var responseRoutesResult: Array = new Array();

        public function getList(): Array{
            return responseRoutesResult;
        }

}

}
