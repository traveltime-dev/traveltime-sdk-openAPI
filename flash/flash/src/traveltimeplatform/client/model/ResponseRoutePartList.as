package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.Coords;
import traveltimeplatform.client.model.ResponseTransportationMode;

    public class ResponseRoutePartList implements ListWrapper {
        // This declaration below of _ResponseRoutePart_obj_class is to force flash compiler to include this class
        private var _responseRoutePart_obj_class: traveltimeplatform.client.model.ResponseRoutePart = null;
        [XmlElements(name="responseRoutePart", type="traveltimeplatform.client.model.ResponseRoutePart")]
        public var responseRoutePart: Array = new Array();

        public function getList(): Array{
            return responseRoutePart;
        }

}

}
