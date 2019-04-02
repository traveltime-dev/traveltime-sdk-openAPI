package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.Coords;

    public class RequestLocationList implements ListWrapper {
        // This declaration below of _RequestLocation_obj_class is to force flash compiler to include this class
        private var _requestLocation_obj_class: traveltimeplatform.client.model.RequestLocation = null;
        [XmlElements(name="requestLocation", type="traveltimeplatform.client.model.RequestLocation")]
        public var requestLocation: Array = new Array();

        public function getList(): Array{
            return requestLocation;
        }

}

}
