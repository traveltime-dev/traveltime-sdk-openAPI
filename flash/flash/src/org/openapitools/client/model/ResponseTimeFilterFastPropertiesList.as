package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseFaresFast;

    public class ResponseTimeFilterFastPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFastProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFastProperties_obj_class: org.openapitools.client.model.ResponseTimeFilterFastProperties = null;
        [XmlElements(name="responseTimeFilterFastProperties", type="org.openapitools.client.model.ResponseTimeFilterFastProperties")]
        public var responseTimeFilterFastProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFastProperties;
        }

}

}
