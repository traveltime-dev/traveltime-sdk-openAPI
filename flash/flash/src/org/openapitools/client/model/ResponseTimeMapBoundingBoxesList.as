package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeMapBoundingBoxesResult;

    public class ResponseTimeMapBoundingBoxesList implements ListWrapper {
        // This declaration below of _ResponseTimeMapBoundingBoxes_obj_class is to force flash compiler to include this class
        private var _responseTimeMapBoundingBoxes_obj_class: org.openapitools.client.model.ResponseTimeMapBoundingBoxes = null;
        [XmlElements(name="responseTimeMapBoundingBoxes", type="org.openapitools.client.model.ResponseTimeMapBoundingBoxes")]
        public var responseTimeMapBoundingBoxes: Array = new Array();

        public function getList(): Array{
            return responseTimeMapBoundingBoxes;
        }

}

}
