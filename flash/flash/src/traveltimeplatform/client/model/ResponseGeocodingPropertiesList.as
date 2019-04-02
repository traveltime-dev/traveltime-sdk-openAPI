package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseMapInfoFeatures;

    public class ResponseGeocodingPropertiesList implements ListWrapper {
        // This declaration below of _ResponseGeocodingProperties_obj_class is to force flash compiler to include this class
        private var _responseGeocodingProperties_obj_class: traveltimeplatform.client.model.ResponseGeocodingProperties = null;
        [XmlElements(name="responseGeocodingProperties", type="traveltimeplatform.client.model.ResponseGeocodingProperties")]
        public var responseGeocodingProperties: Array = new Array();

        public function getList(): Array{
            return responseGeocodingProperties;
        }

}

}
