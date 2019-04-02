package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseMapInfoMap;

    public class ResponseMapInfoList implements ListWrapper {
        // This declaration below of _ResponseMapInfo_obj_class is to force flash compiler to include this class
        private var _responseMapInfo_obj_class: traveltimeplatform.client.model.ResponseMapInfo = null;
        [XmlElements(name="responseMapInfo", type="traveltimeplatform.client.model.ResponseMapInfo")]
        public var responseMapInfo: Array = new Array();

        public function getList(): Array{
            return responseMapInfo;
        }

}

}
