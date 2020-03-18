package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodeSectorsResult;

    public class ResponseTimeFilterPostcodeSectorsList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSectors_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSectors_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeSectors = null;
        [XmlElements(name="responseTimeFilterPostcodeSectors", type="org.openapitools.client.model.ResponseTimeFilterPostcodeSectors")]
        public var responseTimeFilterPostcodeSectors: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSectors;
        }

}

}
