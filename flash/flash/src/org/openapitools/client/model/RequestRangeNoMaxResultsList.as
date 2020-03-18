package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestRangeNoMaxResultsList implements ListWrapper {
        // This declaration below of _RequestRangeNoMaxResults_obj_class is to force flash compiler to include this class
        private var _requestRangeNoMaxResults_obj_class: org.openapitools.client.model.RequestRangeNoMaxResults = null;
        [XmlElements(name="requestRangeNoMaxResults", type="org.openapitools.client.model.RequestRangeNoMaxResults")]
        public var requestRangeNoMaxResults: Array = new Array();

        public function getList(): Array{
            return requestRangeNoMaxResults;
        }

}

}
