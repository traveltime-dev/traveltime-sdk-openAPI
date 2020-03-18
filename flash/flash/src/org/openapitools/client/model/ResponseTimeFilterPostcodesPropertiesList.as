package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTimeFilterPostcodesPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodesProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodesProperties_obj_class: org.openapitools.client.model.ResponseTimeFilterPostcodesProperties = null;
        [XmlElements(name="responseTimeFilterPostcodesProperties", type="org.openapitools.client.model.ResponseTimeFilterPostcodesProperties")]
        public var responseTimeFilterPostcodesProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodesProperties;
        }

}

}
