package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseSupportedLocationList implements ListWrapper {
        // This declaration below of _ResponseSupportedLocation_obj_class is to force flash compiler to include this class
        private var _responseSupportedLocation_obj_class: traveltimeplatform.client.model.ResponseSupportedLocation = null;
        [XmlElements(name="responseSupportedLocation", type="traveltimeplatform.client.model.ResponseSupportedLocation")]
        public var responseSupportedLocation: Array = new Array();

        public function getList(): Array{
            return responseSupportedLocation;
        }

}

}
