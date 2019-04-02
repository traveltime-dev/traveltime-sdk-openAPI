package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodesProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodesArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesArrivalSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodesArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodesArrivalSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodesArrivalSearch")]
        public var requestTimeFilterPostcodesArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesArrivalSearch;
        }

}

}
