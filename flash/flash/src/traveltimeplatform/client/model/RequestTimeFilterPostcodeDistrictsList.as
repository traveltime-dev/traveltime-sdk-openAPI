package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;

    public class RequestTimeFilterPostcodeDistrictsList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistricts_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistricts_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeDistricts = null;
        [XmlElements(name="requestTimeFilterPostcodeDistricts", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeDistricts")]
        public var requestTimeFilterPostcodeDistricts: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistricts;
        }

}

}
