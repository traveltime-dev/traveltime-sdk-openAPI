package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterPostcodeSectorProperties;

    public class ResponseTimeFilterPostcodeSectorList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSector_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSector_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodeSector = null;
        [XmlElements(name="responseTimeFilterPostcodeSector", type="org.openapitools.client.model.ResponseTimeFilterPostcodeSector")]
        public var responseTimeFilterPostcodeSector: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSector;
        }

}

}
