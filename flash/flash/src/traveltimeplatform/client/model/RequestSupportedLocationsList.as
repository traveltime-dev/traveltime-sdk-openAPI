package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestLocation;

    public class RequestSupportedLocationsList implements ListWrapper {
        // This declaration below of _RequestSupportedLocations_obj_class is to force flash compiler to include this class
        private var _requestSupportedLocations_obj_class: traveltimeplatform.client.model.RequestSupportedLocations = null;
        [XmlElements(name="requestSupportedLocations", type="traveltimeplatform.client.model.RequestSupportedLocations")]
        public var requestSupportedLocations: Array = new Array();

        public function getList(): Array{
            return requestSupportedLocations;
        }

}

}
