package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterDepartureSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterDepartureSearch = null;
        [XmlElements(name="requestTimeFilterDepartureSearch", type="traveltimeplatform.client.model.RequestTimeFilterDepartureSearch")]
        public var requestTimeFilterDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterDepartureSearch;
        }

}

}
