package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseBoundingBox;
import org.openapitools.client.model.ResponseTimeMapProperties;

    public class ResponseTimeMapBoundingBoxesResultList implements ListWrapper {
        // This declaration below of _ResponseTimeMapBoundingBoxesResult_obj_class is to force flash compiler to include this class
        private var _responseTimeMapBoundingBoxesResult_obj_class: org.openapitools.client.model.ResponseTimeMapBoundingBoxesResult = null;
        [XmlElements(name="responseTimeMapBoundingBoxesResult", type="org.openapitools.client.model.ResponseTimeMapBoundingBoxesResult")]
        public var responseTimeMapBoundingBoxesResult: Array = new Array();

        public function getList(): Array{
            return responseTimeMapBoundingBoxesResult;
        }

}

}
