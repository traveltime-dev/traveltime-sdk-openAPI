package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseBoxList implements ListWrapper {
        // This declaration below of _ResponseBox_obj_class is to force flash compiler to include this class
        private var _responseBox_obj_class: org.openapitools.client.model.ResponseBox = null;
        [XmlElements(name="responseBox", type="org.openapitools.client.model.ResponseBox")]
        public var responseBox: Array = new Array();

        public function getList(): Array{
            return responseBox;
        }

}

}
