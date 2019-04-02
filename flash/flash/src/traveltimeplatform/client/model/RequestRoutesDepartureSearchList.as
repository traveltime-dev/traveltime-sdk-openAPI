package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestRangeFull;
import traveltimeplatform.client.model.RequestRoutesProperty;
import traveltimeplatform.client.model.RequestTransportation;

    public class RequestRoutesDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestRoutesDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestRoutesDepartureSearch_obj_class: traveltimeplatform.client.model.RequestRoutesDepartureSearch = null;
        [XmlElements(name="requestRoutesDepartureSearch", type="traveltimeplatform.client.model.RequestRoutesDepartureSearch")]
        public var requestRoutesDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestRoutesDepartureSearch;
        }

}

}
