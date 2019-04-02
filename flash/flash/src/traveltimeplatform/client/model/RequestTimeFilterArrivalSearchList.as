package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterArrivalSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterArrivalSearch = null;
        [XmlElements(name="requestTimeFilterArrivalSearch", type="traveltimeplatform.client.model.RequestTimeFilterArrivalSearch")]
        public var requestTimeFilterArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterArrivalSearch;
        }

}

}
