package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterLocation;

    public class ResponseTimeFilterResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterResult_obj_class: org.openapitools.client.model.ResponseTimeFilterResult = null;
        [XmlElements(name="responseTimeFilterResult", type="org.openapitools.client.model.ResponseTimeFilterResult")]
        public var responseTimeFilterResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterResult;
        }

}

}
