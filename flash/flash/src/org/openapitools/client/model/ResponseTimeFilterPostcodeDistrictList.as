package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodeDistrictProperties;

    public class ResponseTimeFilterPostcodeDistrictList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistrict_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistrict_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeDistrict = null;
        [XmlElements(name="responseTimeFilterPostcodeDistrict", type="org.openapitools.client.model.ResponseTimeFilterPostcodeDistrict")]
        public var responseTimeFilterPostcodeDistrict: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistrict;
        }

}

}
