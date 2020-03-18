package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseTimeFilterProperties;

    public class ResponseTimeFilterLocationList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterLocation_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterLocation_obj_class: org.openapitools.client.model.ResponseTimeFilterLocation = null;
        [XmlElements(name="responseTimeFilterLocation", type="org.openapitools.client.model.ResponseTimeFilterLocation")]
        public var responseTimeFilterLocation: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterLocation;
        }

}

}
