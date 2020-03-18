package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseFareTicket;
import org.openapitools.client.model.ResponseTransportationMode;

    public class ResponseFaresBreakdownItemList implements ListWrapper {
        // This declaration below of _ResponseFaresBreakdownItem_obj_class is to force flash compiler to include this class
        private var _responseFaresBreakdownItem_obj_class: org.openapitools.client.model.ResponseFaresBreakdownItem = null;
        [XmlElements(name="responseFaresBreakdownItem", type="org.openapitools.client.model.ResponseFaresBreakdownItem")]
        public var responseFaresBreakdownItem: Array = new Array();

        public function getList(): Array{
            return responseFaresBreakdownItem;
        }

}

}
