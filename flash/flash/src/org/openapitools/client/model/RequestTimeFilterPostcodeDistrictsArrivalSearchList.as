package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeDistrictsArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsArrivalSearch_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsArrivalSearch", type="org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch")]
        public var requestTimeFilterPostcodeDistrictsArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsArrivalSearch;
        }

}

}
