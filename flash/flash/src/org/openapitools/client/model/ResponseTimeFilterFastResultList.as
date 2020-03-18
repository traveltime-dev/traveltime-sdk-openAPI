package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterFastLocation;

    public class ResponseTimeFilterFastResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFastResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFastResult_obj_class: org.openapitools.client.model.ResponseTimeFilterFastResult = null;
        [XmlElements(name="responseTimeFilterFastResult", type="org.openapitools.client.model.ResponseTimeFilterFastResult")]
        public var responseTimeFilterFastResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFastResult;
        }

}

}
