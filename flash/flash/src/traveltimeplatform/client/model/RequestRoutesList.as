package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestLocation;
import traveltimeplatform.client.model.RequestRoutesArrivalSearch;
import traveltimeplatform.client.model.RequestRoutesDepartureSearch;

    public class RequestRoutesList implements ListWrapper {
        // This declaration below of _RequestRoutes_obj_class is to force flash compiler to include this class
        private var _requestRoutes_obj_class: traveltimeplatform.client.model.RequestRoutes = null;
        [XmlElements(name="requestRoutes", type="traveltimeplatform.client.model.RequestRoutes")]
        public var requestRoutes: Array = new Array();

        public function getList(): Array{
            return requestRoutes;
        }

}

}
