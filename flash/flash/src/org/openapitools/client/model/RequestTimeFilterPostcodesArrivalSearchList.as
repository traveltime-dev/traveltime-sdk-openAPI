package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodesArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesArrivalSearch_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodesArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodesArrivalSearch", type="org.openapitools.client.model.RequestTimeFilterPostcodesArrivalSearch")]
        public var requestTimeFilterPostcodesArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesArrivalSearch;
        }

}

}
