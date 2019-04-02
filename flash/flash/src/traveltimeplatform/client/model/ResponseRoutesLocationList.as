package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseRoutesProperties;

    public class ResponseRoutesLocationList implements ListWrapper {
        // This declaration below of _ResponseRoutesLocation_obj_class is to force flash compiler to include this class
        private var _responseRoutesLocation_obj_class: traveltimeplatform.client.model.ResponseRoutesLocation = null;
        [XmlElements(name="responseRoutesLocation", type="traveltimeplatform.client.model.ResponseRoutesLocation")]
        public var responseRoutesLocation: Array = new Array();

        public function getList(): Array{
            return responseRoutesLocation;
        }

}

}
