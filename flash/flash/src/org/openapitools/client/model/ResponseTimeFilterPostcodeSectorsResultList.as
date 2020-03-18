package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodeSector;

    public class ResponseTimeFilterPostcodeSectorsResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSectorsResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSectorsResult_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeSectorsResult = null;
        [XmlElements(name="responseTimeFilterPostcodeSectorsResult", type="org.openapitools.client.model.ResponseTimeFilterPostcodeSectorsResult")]
        public var responseTimeFilterPostcodeSectorsResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSectorsResult;
        }

}

}
