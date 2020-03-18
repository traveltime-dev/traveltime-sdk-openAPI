package org.openapitools.client.model {

import org.openapitools.client.model.ResponseFareTicket;

    [XmlRootNode(name="ResponseFaresFast")]
    public class ResponseFaresFast {
                // This declaration below of _ticketsTotal_obj_class is to force flash compiler to include this class
        private var _ticketsTotal_obj_class: Array = null;
        [XmlElementWrapper(name="tickets_total")]
        [XmlElements(name="ticketsTotal", type="Array")]
                public var ticketsTotal: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseFaresFast: ";
        str += " (ticketsTotal: " + ticketsTotal + ")";
        return str;
    }

}

}
