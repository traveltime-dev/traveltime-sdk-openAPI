package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestTimeFilterPostcodesArrivalSearch;
import traveltimeplatform.client.model.RequestTimeFilterPostcodesDepartureSearch;

    public class RequestTimeFilterPostcodesList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodes_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodes_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodes = null;
        [XmlElements(name="requestTimeFilterPostcodes", type="traveltimeplatform.client.model.RequestTimeFilterPostcodes")]
        public var requestTimeFilterPostcodes: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodes;
        }

}

}
