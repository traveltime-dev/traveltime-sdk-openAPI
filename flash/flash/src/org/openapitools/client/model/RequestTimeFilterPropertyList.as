package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterProperty_obj_class: org.openapitools.client.model.RequestTimeFilterProperty = null;
        [XmlElements(name="requestTimeFilterProperty", type="org.openapitools.client.model.RequestTimeFilterProperty")]
        public var requestTimeFilterProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterProperty;
        }

}

}
