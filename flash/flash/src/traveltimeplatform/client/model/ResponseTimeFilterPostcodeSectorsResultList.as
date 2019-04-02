package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSector;

    public class ResponseTimeFilterPostcodeSectorsResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSectorsResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSectorsResult_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorsResult = null;
        [XmlElements(name="responseTimeFilterPostcodeSectorsResult", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorsResult")]
        public var responseTimeFilterPostcodeSectorsResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSectorsResult;
        }

}

}
