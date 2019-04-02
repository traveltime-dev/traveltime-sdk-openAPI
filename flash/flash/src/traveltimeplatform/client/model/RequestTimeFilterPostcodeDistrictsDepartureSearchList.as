package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodeDistrictsDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsDepartureSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsDepartureSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch")]
        public var requestTimeFilterPostcodeDistrictsDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsDepartureSearch;
        }

}

}
