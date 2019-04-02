package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeDistrictsArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsArrivalSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsArrivalSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch")]
        public var requestTimeFilterPostcodeDistrictsArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsArrivalSearch;
        }

}

}
