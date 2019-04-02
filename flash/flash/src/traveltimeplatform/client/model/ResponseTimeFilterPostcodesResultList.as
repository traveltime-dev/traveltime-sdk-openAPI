package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcode;

    public class ResponseTimeFilterPostcodesResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodesResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodesResult_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodesResult = null;
        [XmlElements(name="responseTimeFilterPostcodesResult", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodesResult")]
        public var responseTimeFilterPostcodesResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodesResult;
        }

}

}
