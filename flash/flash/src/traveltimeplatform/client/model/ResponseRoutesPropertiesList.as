package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseFares;
import traveltimeplatform.client.model.ResponseRoute;

    public class ResponseRoutesPropertiesList implements ListWrapper {
        // This declaration below of _ResponseRoutesProperties_obj_class is to force flash compiler to include this class
        private var _responseRoutesProperties_obj_class: traveltimeplatform.client.model.ResponseRoutesProperties = null;
        [XmlElements(name="responseRoutesProperties", type="traveltimeplatform.client.model.ResponseRoutesProperties")]
        public var responseRoutesProperties: Array = new Array();

        public function getList(): Array{
            return responseRoutesProperties;
        }

}

}
