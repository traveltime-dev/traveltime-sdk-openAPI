package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseShape;
import traveltimeplatform.client.model.ResponseTimeMapProperties;

    public class ResponseTimeMapResultList implements ListWrapper {
        // This declaration below of _ResponseTimeMapResult_obj_class is to force flash compiler to include this class
        private var _responseTimeMapResult_obj_class: traveltimeplatform.client.model.ResponseTimeMapResult = null;
        [XmlElements(name="responseTimeMapResult", type="traveltimeplatform.client.model.ResponseTimeMapResult")]
        public var responseTimeMapResult: Array = new Array();

        public function getList(): Array{
            return responseTimeMapResult;
        }

}

}
