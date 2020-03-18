package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestLocation;
import org.openapitools.client.model.RequestTimeFilterArrivalSearch;
import org.openapitools.client.model.RequestTimeFilterDepartureSearch;

    public class RequestTimeFilterList implements ListWrapper {
        // This declaration below of _RequestTimeFilter_obj_class is to force flash compiler to include this class
        private var _requestTimeFilter_obj_class: org.openapitools.client.model.RequestTimeFilter = null;
        [XmlElements(name="requestTimeFilter", type="org.openapitools.client.model.RequestTimeFilter")]
        public var requestTimeFilter: Array = new Array();

        public function getList(): Array{
            return requestTimeFilter;
        }

}

}
