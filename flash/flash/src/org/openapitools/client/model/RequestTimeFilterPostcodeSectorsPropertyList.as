package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPostcodeSectorsPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeSectorsProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeSectorsProperty_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeSectorsProperty = null;
        [XmlElements(name="requestTimeFilterPostcodeSectorsProperty", type="org.openapitools.client.model.RequestTimeFilterPostcodeSectorsProperty")]
        public var requestTimeFilterPostcodeSectorsProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeSectorsProperty;
        }

}

}
