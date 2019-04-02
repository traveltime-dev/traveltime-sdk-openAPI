package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeMapResult;

    public class ResponseTimeMapList implements ListWrapper {
        // This declaration below of _ResponseTimeMap_obj_class is to force flash compiler to include this class
        private var _responseTimeMap_obj_class: traveltimeplatform.client.model.ResponseTimeMap = null;
        [XmlElements(name="responseTimeMap", type="traveltimeplatform.client.model.ResponseTimeMap")]
        public var responseTimeMap: Array = new Array();

        public function getList(): Array{
            return responseTimeMap;
        }

}

}
