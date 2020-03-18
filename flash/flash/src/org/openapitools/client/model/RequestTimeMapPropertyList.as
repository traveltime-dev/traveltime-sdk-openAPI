package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeMapPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeMapProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeMapProperty_obj_class: org.openapitools.client.model.RequestTimeMapProperty = null;
        [XmlElements(name="requestTimeMapProperty", type="org.openapitools.client.model.RequestTimeMapProperty")]
        public var requestTimeMapProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeMapProperty;
        }

}

}
