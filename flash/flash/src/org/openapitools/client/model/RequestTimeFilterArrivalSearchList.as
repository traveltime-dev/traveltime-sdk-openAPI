package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterArrivalSearch_obj_class: org.openapitools.client.model.RequestTimeFilterArrivalSearch = null;
        [XmlElements(name="requestTimeFilterArrivalSearch", type="org.openapitools.client.model.RequestTimeFilterArrivalSearch")]
        public var requestTimeFilterArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterArrivalSearch;
        }

}

}
