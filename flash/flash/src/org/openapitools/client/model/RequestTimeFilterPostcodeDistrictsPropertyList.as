package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPostcodeDistrictsPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsProperty_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsProperty = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsProperty", type="org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsProperty")]
        public var requestTimeFilterPostcodeDistrictsProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsProperty;
        }

}

}
