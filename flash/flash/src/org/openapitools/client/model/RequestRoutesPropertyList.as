package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestRoutesPropertyList implements ListWrapper {
        // This declaration below of _RequestRoutesProperty_obj_class is to force flash compiler to include this class
        private var _requestRoutesProperty_obj_class: org.openapitools.client.model.RequestRoutesProperty = null;
        [XmlElements(name="requestRoutesProperty", type="org.openapitools.client.model.RequestRoutesProperty")]
        public var requestRoutesProperty: Array = new Array();

        public function getList(): Array{
            return requestRoutesProperty;
        }

}

}
