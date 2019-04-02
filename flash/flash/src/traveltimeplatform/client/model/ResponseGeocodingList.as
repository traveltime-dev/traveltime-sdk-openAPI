package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseGeocodingGeoJsonFeature;

    public class ResponseGeocodingList implements ListWrapper {
        // This declaration below of _ResponseGeocoding_obj_class is to force flash compiler to include this class
        private var _responseGeocoding_obj_class: traveltimeplatform.client.model.ResponseGeocoding = null;
        [XmlElements(name="responseGeocoding", type="traveltimeplatform.client.model.ResponseGeocoding")]
        public var responseGeocoding: Array = new Array();

        public function getList(): Array{
            return responseGeocoding;
        }

}

}
