package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTravelTimeStatistics;

    public class ResponseTimeFilterPostcodeDistrictPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeDistrictProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeDistrictProperties_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrictProperties = null;
        [XmlElements(name="responseTimeFilterPostcodeDistrictProperties", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrictProperties")]
        public var responseTimeFilterPostcodeDistrictProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeDistrictProperties;
        }

}

}
