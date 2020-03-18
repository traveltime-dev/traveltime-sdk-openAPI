package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Coords;
import org.openapitools.client.model.RequestRangeNoMaxResults;
import org.openapitools.client.model.RequestTimeMapProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeMapArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeMapArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeMapArrivalSearch_obj_class: org.openapitools.client.model.RequestTimeMapArrivalSearch = null;
        [XmlElements(name="requestTimeMapArrivalSearch", type="org.openapitools.client.model.RequestTimeMapArrivalSearch")]
        public var requestTimeMapArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeMapArrivalSearch;
        }

}

}
