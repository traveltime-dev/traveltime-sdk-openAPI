package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Coords;
import org.openapitools.client.model.ResponseTransportationMode;

    public class ResponseRoutePartList implements ListWrapper {
        // This declaration below of _ResponseRoutePart_obj_class is to force flash compiler to include this class
        private var _responseRoutePart_obj_class: org.openapitools.client.model.ResponseRoutePart = null;
        [XmlElements(name="responseRoutePart", type="org.openapitools.client.model.ResponseRoutePart")]
        public var responseRoutePart: Array = new Array();

        public function getList(): Array{
            return responseRoutePart;
        }

}

}
