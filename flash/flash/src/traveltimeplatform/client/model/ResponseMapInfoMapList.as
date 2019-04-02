package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseMapInfoFeatures;

    public class ResponseMapInfoMapList implements ListWrapper {
        // This declaration below of _ResponseMapInfoMap_obj_class is to force flash compiler to include this class
        private var _responseMapInfoMap_obj_class: traveltimeplatform.client.model.ResponseMapInfoMap = null;
        [XmlElements(name="responseMapInfoMap", type="traveltimeplatform.client.model.ResponseMapInfoMap")]
        public var responseMapInfoMap: Array = new Array();

        public function getList(): Array{
            return responseMapInfoMap;
        }

}

}
