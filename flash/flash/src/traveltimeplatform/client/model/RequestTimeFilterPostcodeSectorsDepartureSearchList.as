package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeSectorsDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeSectorsDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeSectorsDepartureSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsDepartureSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeSectorsDepartureSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeSectorsDepartureSearch")]
        public var requestTimeFilterPostcodeSectorsDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeSectorsDepartureSearch;
        }

}

}
