package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseMapInfoFeatures;

    public class ResponseMapInfoMapList implements ListWrapper {
        // This declaration below of _ResponseMapInfoMap_obj_class is to force flash compiler to include this class
        private var _responseMapInfoMap_obj_class: org.openapitools.client.model.ResponseMapInfoMap = null;
        [XmlElements(name="responseMapInfoMap", type="org.openapitools.client.model.ResponseMapInfoMap")]
        public var responseMapInfoMap: Array = new Array();

        public function getList(): Array{
            return responseMapInfoMap;
        }

}

}
