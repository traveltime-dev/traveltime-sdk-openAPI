package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.Coords;
import traveltimeplatform.client.model.RequestRangeNoMaxResults;
import traveltimeplatform.client.model.RequestTimeMapProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeMapArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeMapArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeMapArrivalSearch_obj_class: traveltimeplatform.client.model.RequestTimeMapArrivalSearch = null;
        [XmlElements(name="requestTimeMapArrivalSearch", type="traveltimeplatform.client.model.RequestTimeMapArrivalSearch")]
        public var requestTimeMapArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeMapArrivalSearch;
        }

}

}
