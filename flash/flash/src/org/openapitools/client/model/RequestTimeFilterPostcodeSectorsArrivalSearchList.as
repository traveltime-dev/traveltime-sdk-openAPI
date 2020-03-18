package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeSectorsArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeSectorsArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeSectorsArrivalSearch_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeSectorsArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeSectorsArrivalSearch", type="org.openapitools.client.model.RequestTimeFilterPostcodeSectorsArrivalSearch")]
        public var requestTimeFilterPostcodeSectorsArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeSectorsArrivalSearch;
        }

}

}
