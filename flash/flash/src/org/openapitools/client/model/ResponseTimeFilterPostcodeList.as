package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodesProperties;

    public class ResponseTimeFilterPostcodeList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcode_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcode_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcode = null;
        [XmlElements(name="responseTimeFilterPostcode", type="org.openapitools.client.model.ResponseTimeFilterPostcode")]
        public var responseTimeFilterPostcode: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcode;
        }

}

}
