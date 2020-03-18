package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseMapInfoMap;

    public class ResponseMapInfoList implements ListWrapper {
        // This declaration below of _ResponseMapInfo_obj_class is to force flash compiler to include this class
        private var _responseMapInfo_obj_class: org.openapitools.client.model.ResponseMapInfo = null;
        [XmlElements(name="responseMapInfo", type="org.openapitools.client.model.ResponseMapInfo")]
        public var responseMapInfo: Array = new Array();

        public function getList(): Array{
            return responseMapInfo;
        }

}

}
