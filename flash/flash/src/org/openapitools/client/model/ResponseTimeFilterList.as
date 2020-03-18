package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterResult;

    public class ResponseTimeFilterList implements ListWrapper {
        // This declaration below of _ResponseTimeFilter_obj_class is to force flash compiler to include this class
        private var _responseTimeFilter_obj_class: org.openapitools.client.model.ResponseTimeFilter = null;
        [XmlElements(name="responseTimeFilter", type="org.openapitools.client.model.ResponseTimeFilter")]
        public var responseTimeFilter: Array = new Array();

        public function getList(): Array{
            return responseTimeFilter;
        }

}

}
