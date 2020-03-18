package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeDistrictsDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsDepartureSearch_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsDepartureSearch", type="org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch")]
        public var requestTimeFilterPostcodeDistrictsDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsDepartureSearch;
        }

}

}
