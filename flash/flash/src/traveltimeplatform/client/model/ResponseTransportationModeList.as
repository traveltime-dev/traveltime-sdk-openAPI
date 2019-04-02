package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTransportationModeList implements ListWrapper {
        // This declaration below of _ResponseTransportationMode_obj_class is to force flash compiler to include this class
        private var _responseTransportationMode_obj_class: traveltimeplatform.client.model.ResponseTransportationMode = null;
        [XmlElements(name="responseTransportationMode", type="traveltimeplatform.client.model.ResponseTransportationMode")]
        public var responseTransportationMode: Array = new Array();

        public function getList(): Array{
            return responseTransportationMode;
        }

}

}
