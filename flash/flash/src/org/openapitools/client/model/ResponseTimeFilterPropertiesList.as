package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseDistanceBreakdownItem;
import org.openapitools.client.model.ResponseFares;
import org.openapitools.client.model.ResponseRoute;

    public class ResponseTimeFilterPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterProperties_obj_class: org.openapitools.client.model.ResponseTimeFilterProperties = null;
        [XmlElements(name="responseTimeFilterProperties", type="org.openapitools.client.model.ResponseTimeFilterProperties")]
        public var responseTimeFilterProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterProperties;
        }

}

}
