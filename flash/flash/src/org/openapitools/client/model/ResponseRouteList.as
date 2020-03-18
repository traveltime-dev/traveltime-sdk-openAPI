package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseRoutePart;

    public class ResponseRouteList implements ListWrapper {
        // This declaration below of _ResponseRoute_obj_class is to force flash compiler to include this class
        private var _responseRoute_obj_class: org.openapitools.client.model.ResponseRoute = null;
        [XmlElements(name="responseRoute", type="org.openapitools.client.model.ResponseRoute")]
        public var responseRoute: Array = new Array();

        public function getList(): Array{
            return responseRoute;
        }

}

}
