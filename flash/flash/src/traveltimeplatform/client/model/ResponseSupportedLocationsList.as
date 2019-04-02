package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseSupportedLocation;

    public class ResponseSupportedLocationsList implements ListWrapper {
        // This declaration below of _ResponseSupportedLocations_obj_class is to force flash compiler to include this class
        private var _responseSupportedLocations_obj_class: traveltimeplatform.client.model.ResponseSupportedLocations = null;
        [XmlElements(name="responseSupportedLocations", type="traveltimeplatform.client.model.ResponseSupportedLocations")]
        public var responseSupportedLocations: Array = new Array();

        public function getList(): Array{
            return responseSupportedLocations;
        }

}

}
