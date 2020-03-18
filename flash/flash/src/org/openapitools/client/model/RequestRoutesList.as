package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestLocation;
import org.openapitools.client.model.RequestRoutesArrivalSearch;
import org.openapitools.client.model.RequestRoutesDepartureSearch;

    public class RequestRoutesList implements ListWrapper {
        // This declaration below of _RequestRoutes_obj_class is to force flash compiler to include this class
        private var _requestRoutes_obj_class: org.openapitools.client.model.RequestRoutes = null;
        [XmlElements(name="requestRoutes", type="org.openapitools.client.model.RequestRoutes")]
        public var requestRoutes: Array = new Array();

        public function getList(): Array{
            return requestRoutes;
        }

}

}
