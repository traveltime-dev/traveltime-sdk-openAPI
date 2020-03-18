package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterDepartureSearch_obj_class: org.openapitools.client.model.RequestTimeFilterDepartureSearch = null;
        [XmlElements(name="requestTimeFilterDepartureSearch", type="org.openapitools.client.model.RequestTimeFilterDepartureSearch")]
        public var requestTimeFilterDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterDepartureSearch;
        }

}

}
