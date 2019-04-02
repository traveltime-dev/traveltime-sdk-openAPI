package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseFareTicket;
import traveltimeplatform.client.model.ResponseTransportationMode;

    public class ResponseFaresBreakdownItemList implements ListWrapper {
        // This declaration below of _ResponseFaresBreakdownItem_obj_class is to force flash compiler to include this class
        private var _responseFaresBreakdownItem_obj_class: traveltimeplatform.client.model.ResponseFaresBreakdownItem = null;
        [XmlElements(name="responseFaresBreakdownItem", type="traveltimeplatform.client.model.ResponseFaresBreakdownItem")]
        public var responseFaresBreakdownItem: Array = new Array();

        public function getList(): Array{
            return responseFaresBreakdownItem;
        }

}

}
