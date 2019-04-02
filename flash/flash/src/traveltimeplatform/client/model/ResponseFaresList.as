package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseFareTicket;
import traveltimeplatform.client.model.ResponseFaresBreakdownItem;

    public class ResponseFaresList implements ListWrapper {
        // This declaration below of _ResponseFares_obj_class is to force flash compiler to include this class
        private var _responseFares_obj_class: traveltimeplatform.client.model.ResponseFares = null;
        [XmlElements(name="responseFares", type="traveltimeplatform.client.model.ResponseFares")]
        public var responseFares: Array = new Array();

        public function getList(): Array{
            return responseFares;
        }

}

}
