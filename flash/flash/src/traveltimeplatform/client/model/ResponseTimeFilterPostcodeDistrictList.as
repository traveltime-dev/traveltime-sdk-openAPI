package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrictProperties;

    public class ResponseTimeFilterPostcodeDistrictList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistrict_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistrict_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrict = null;
        [XmlElements(name="responseTimeFilterPostcodeDistrict", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrict")]
        public var responseTimeFilterPostcodeDistrict: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistrict;
        }

}

}
