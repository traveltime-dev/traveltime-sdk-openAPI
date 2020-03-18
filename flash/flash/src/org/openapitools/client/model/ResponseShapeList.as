package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Coords;

    public class ResponseShapeList implements ListWrapper {
        // This declaration below of _ResponseShape_obj_class is to force flash compiler to include this class
        private var _responseShape_obj_class: org.openapitools.client.model.ResponseShape = null;
        [XmlElements(name="responseShape", type="org.openapitools.client.model.ResponseShape")]
        public var responseShape: Array = new Array();

        public function getList(): Array{
            return responseShape;
        }

}

}
