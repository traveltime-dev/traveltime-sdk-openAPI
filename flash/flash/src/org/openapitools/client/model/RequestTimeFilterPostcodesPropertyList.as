package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPostcodesPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesProperty_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodesProperty = null;
        [XmlElements(name="requestTimeFilterPostcodesProperty", type="org.openapitools.client.model.RequestTimeFilterPostcodesProperty")]
        public var requestTimeFilterPostcodesProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesProperty;
        }

}

}
