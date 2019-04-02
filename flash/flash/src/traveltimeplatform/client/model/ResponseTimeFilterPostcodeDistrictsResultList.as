package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrict;

    public class ResponseTimeFilterPostcodeDistrictsResultList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistrictsResult_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistrictsResult_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrictsResult = null;
        [XmlElements(name="responseTimeFilterPostcodeDistrictsResult", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrictsResult")]
        public var responseTimeFilterPostcodeDistrictsResult: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistrictsResult;
        }

}

}
