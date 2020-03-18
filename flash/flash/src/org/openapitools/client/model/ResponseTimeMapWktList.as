package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeMapWktResult;

    public class ResponseTimeMapWktList implements ListWrapper {
        // This declaration below of _ResponseTimeMapWkt_obj_class is to force flash compiler to include this class
        private var _responseTimeMapWkt_obj_class: org.openapitools.client.model.ResponseTimeMapWkt = null;
        [XmlElements(name="responseTimeMapWkt", type="org.openapitools.client.model.ResponseTimeMapWkt")]
        public var responseTimeMapWkt: Array = new Array();

        public function getList(): Array{
            return responseTimeMapWkt;
        }

}

}
