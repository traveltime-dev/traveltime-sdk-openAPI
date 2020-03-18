package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;

    public class RequestTimeFilterPostcodeDistrictsList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistricts_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistricts_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeDistricts = null;
        [XmlElements(name="requestTimeFilterPostcodeDistricts", type="org.openapitools.client.model.RequestTimeFilterPostcodeDistricts")]
        public var requestTimeFilterPostcodeDistricts: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistricts;
        }

}

}
