package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodesResult;

    public class ResponseTimeFilterPostcodesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodes_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodes_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodes = null;
        [XmlElements(name="responseTimeFilterPostcodes", type="org.openapitools.client.model.ResponseTimeFilterPostcodes")]
        public var responseTimeFilterPostcodes: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodes;
        }

}

}
