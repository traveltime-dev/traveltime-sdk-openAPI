package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeSectorsArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeSectorsArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeSectorsArrivalSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeSectorsArrivalSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsArrivalSearch")]
        public var requestTimeFilterPostcodeSectorsArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeSectorsArrivalSearch;
        }

}

}
