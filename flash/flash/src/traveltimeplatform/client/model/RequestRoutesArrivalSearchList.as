package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestRoutesProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestRoutesArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestRoutesArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestRoutesArrivalSearch_obj_class: traveltimeplatform.client.model.RequestRoutesArrivalSearch = null;
        [XmlElements(name="requestRoutesArrivalSearch", type="traveltimeplatform.client.model.RequestRoutesArrivalSearch")]
        public var requestRoutesArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestRoutesArrivalSearch;
        }

}

}
