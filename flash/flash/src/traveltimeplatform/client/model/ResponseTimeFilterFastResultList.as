package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterFastLocation;

    public class ResponseTimeFilterFastResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFastResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFastResult_obj_class: traveltimeplatform.client.model.ResponseTimeFilterFastResult = null;
        [XmlElements(name="responseTimeFilterFastResult", type="traveltimeplatform.client.model.ResponseTimeFilterFastResult")]
        public var responseTimeFilterFastResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFastResult;
        }

}

}
