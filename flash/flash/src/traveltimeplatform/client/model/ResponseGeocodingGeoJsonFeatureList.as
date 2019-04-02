package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseGeocodingGeometry;
import traveltimeplatform.client.model.ResponseGeocodingProperties;

    public class ResponseGeocodingGeoJsonFeatureList implements ListWrapper {
        // This declaration below of _ResponseGeocodingGeoJsonFeature_obj_class is to force flash compiler to include this class
        private var _responseGeocodingGeoJsonFeature_obj_class: traveltimeplatform.client.model.ResponseGeocodingGeoJsonFeature = null;
        [XmlElements(name="responseGeocodingGeoJsonFeature", type="traveltimeplatform.client.model.ResponseGeocodingGeoJsonFeature")]
        public var responseGeocodingGeoJsonFeature: Array = new Array();

        public function getList(): Array{
            return responseGeocodingGeoJsonFeature;
        }

}

}
