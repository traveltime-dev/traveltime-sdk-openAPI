package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseFareTicket;
import traveltimeplatform.client.model.ResponseFaresBreakdownItem;

    [XmlRootNode(name="ResponseFares")]
    public class ResponseFares {
                // This declaration below of _breakdown_obj_class is to force flash compiler to include this class
        private var _breakdown_obj_class: Array = null;
        [XmlElementWrapper(name="breakdown")]
        [XmlElements(name="breakdown", type="Array")]
                public var breakdown: Array = new Array();
                // This declaration below of _ticketsTotal_obj_class is to force flash compiler to include this class
        private var _ticketsTotal_obj_class: Array = null;
        [XmlElementWrapper(name="tickets_total")]
        [XmlElements(name="ticketsTotal", type="Array")]
                public var ticketsTotal: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseFares: ";
        str += " (breakdown: " + breakdown + ")";
        str += " (ticketsTotal: " + ticketsTotal + ")";
        return str;
    }

}

}
