package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestTimeFilterFastArrivalManyToOneSearch;
import org.openapitools.client.model.RequestTimeFilterFastArrivalOneToManySearch;

    public class RequestTimeFilterFastArrivalSearchesList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFastArrivalSearches_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFastArrivalSearches_obj_class: org.openapitools.client.model.RequestTimeFilterFastArrivalSearches = null;
        [XmlElements(name="requestTimeFilterFastArrivalSearches", type="org.openapitools.client.model.RequestTimeFilterFastArrivalSearches")]
        public var requestTimeFilterFastArrivalSearches: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFastArrivalSearches;
        }

}

}
