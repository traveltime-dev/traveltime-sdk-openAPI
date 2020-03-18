package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseBox;

    public class ResponseBoundingBoxList implements ListWrapper {
        // This declaration below of _ResponseBoundingBox_obj_class is to force flash compiler to include this class
        private var _responseBoundingBox_obj_class: org.openapitools.client.model.ResponseBoundingBox = null;
        [XmlElements(name="responseBoundingBox", type="org.openapitools.client.model.ResponseBoundingBox")]
        public var responseBoundingBox: Array = new Array();

        public function getList(): Array{
            return responseBoundingBox;
        }

}

}
