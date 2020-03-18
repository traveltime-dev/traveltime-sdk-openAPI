package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseFareTicket;
import org.openapitools.client.model.ResponseFaresBreakdownItem;

    public class ResponseFaresList implements ListWrapper {
        // This declaration below of _ResponseFares_obj_class is to force flash compiler to include this class
        private var _responseFares_obj_class: org.openapitools.client.model.ResponseFares = null;
        [XmlElements(name="responseFares", type="org.openapitools.client.model.ResponseFares")]
        public var responseFares: Array = new Array();

        public function getList(): Array{
            return responseFares;
        }

}

}
