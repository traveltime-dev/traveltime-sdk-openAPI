package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseFareTicketList implements ListWrapper {
        // This declaration below of _ResponseFareTicket_obj_class is to force flash compiler to include this class
        private var _responseFareTicket_obj_class: org.openapitools.client.model.ResponseFareTicket = null;
        [XmlElements(name="responseFareTicket", type="org.openapitools.client.model.ResponseFareTicket")]
        public var responseFareTicket: Array = new Array();

        public function getList(): Array{
            return responseFareTicket;
        }

}

}
