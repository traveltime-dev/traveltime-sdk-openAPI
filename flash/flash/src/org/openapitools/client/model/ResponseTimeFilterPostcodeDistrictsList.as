package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodeDistrictsResult;

    public class ResponseTimeFilterPostcodeDistrictsList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistricts_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistricts_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeDistricts = null;
        [XmlElements(name="responseTimeFilterPostcodeDistricts", type="org.openapitools.client.model.ResponseTimeFilterPostcodeDistricts")]
        public var responseTimeFilterPostcodeDistricts: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistricts;
        }

}

}
