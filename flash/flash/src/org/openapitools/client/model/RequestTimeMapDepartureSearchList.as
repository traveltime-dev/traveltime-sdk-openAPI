package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Coords;
import org.openapitools.client.model.RequestRangeNoMaxResults;
import org.openapitools.client.model.RequestTimeMapProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeMapDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeMapDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeMapDepartureSearch_obj_class: org.openapitools.client.model.RequestTimeMapDepartureSearch = null;
        [XmlElements(name="requestTimeMapDepartureSearch", type="org.openapitools.client.model.RequestTimeMapDepartureSearch")]
        public var requestTimeMapDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeMapDepartureSearch;
        }

}

}
