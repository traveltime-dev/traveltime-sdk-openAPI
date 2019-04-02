package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPostcodeDistrictsPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeDistrictsProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeDistrictsProperty_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsProperty = null;
        [XmlElements(name="requestTimeFilterPostcodeDistrictsProperty", type="traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsProperty")]
        public var requestTimeFilterPostcodeDistrictsProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeDistrictsProperty;
        }

}

}
