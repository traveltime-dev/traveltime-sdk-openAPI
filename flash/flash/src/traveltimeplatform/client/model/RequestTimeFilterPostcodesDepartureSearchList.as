package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestTimeFilterPostcodesProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodesDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesDepartureSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodesDepartureSearch = null;
        [XmlElements(name="requestTimeFilterPostcodesDepartureSearch", type="traveltimeplatform.client.model.RequestTimeFilterPostcodesDepartureSearch")]
        public var requestTimeFilterPostcodesDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesDepartureSearch;
        }

}

}
