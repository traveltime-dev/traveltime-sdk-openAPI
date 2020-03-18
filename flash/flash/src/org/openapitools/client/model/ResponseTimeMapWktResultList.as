package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeMapProperties;

    public class ResponseTimeMapWktResultList implements ListWrapper {
        // This declaration below of _ResponseTimeMapWktResult_obj_class is to force flash compiler to include this class
        private var _responseTimeMapWktResult_obj_class: org.openapitools.client.model.ResponseTimeMapWktResult = null;
        [XmlElements(name="responseTimeMapWktResult", type="org.openapitools.client.model.ResponseTimeMapWktResult")]
        public var responseTimeMapWktResult: Array = new Array();

        public function getList(): Array{
            return responseTimeMapWktResult;
        }

}

}
