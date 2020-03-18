package org.openapitools.client.model {

import org.openapitools.client.model.ResponseFareTicket;
import org.openapitools.client.model.ResponseTransportationMode;

    [XmlRootNode(name="ResponseFaresBreakdownItem")]
    public class ResponseFaresBreakdownItem {
                // This declaration below of _modes_obj_class is to force flash compiler to include this class
        private var _modes_obj_class: Array = null;
        [XmlElementWrapper(name="modes")]
        [XmlElements(name="modes", type="Array")]
                public var modes: Array = new Array();
                // This declaration below of _routePartIds_obj_class is to force flash compiler to include this class
        private var _routePartIds_obj_class: Array = null;
        [XmlElementWrapper(name="route_part_ids")]
        [XmlElements(name="routePartIds", type="Array")]
                public var routePartIds: Array = new Array();
                // This declaration below of _tickets_obj_class is to force flash compiler to include this class
        private var _tickets_obj_class: Array = null;
        [XmlElementWrapper(name="tickets")]
        [XmlElements(name="tickets", type="Array")]
                public var tickets: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseFaresBreakdownItem: ";
        str += " (modes: " + modes + ")";
        str += " (routePartIds: " + routePartIds + ")";
        str += " (tickets: " + tickets + ")";
        return str;
    }

}

}
