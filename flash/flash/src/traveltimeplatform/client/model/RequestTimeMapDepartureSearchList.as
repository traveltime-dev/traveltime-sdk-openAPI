package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.Coords;
import traveltimeplatform.client.model.RequestRangeNoMaxResults;
import traveltimeplatform.client.model.RequestTimeMapProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeMapDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeMapDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeMapDepartureSearch_obj_class: traveltimeplatform.client.model.RequestTimeMapDepartureSearch = null;
        [XmlElements(name="requestTimeMapDepartureSearch", type="traveltimeplatform.client.model.RequestTimeMapDepartureSearch")]
        public var requestTimeMapDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeMapDepartureSearch;
        }

}

}
