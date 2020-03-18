package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTravelTimeStatistics;

    public class ResponseTimeFilterPostcodeDistrictPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistrictProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistrictProperties_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeDistrictProperties = null;
        [XmlElements(name="responseTimeFilterPostcodeDistrictProperties", type="org.openapitools.client.model.ResponseTimeFilterPostcodeDistrictProperties")]
        public var responseTimeFilterPostcodeDistrictProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistrictProperties;
        }

}

}
