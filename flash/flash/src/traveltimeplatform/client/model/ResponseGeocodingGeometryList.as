package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseGeocodingGeometryList implements ListWrapper {
        // This declaration below of _ResponseGeocodingGeometry_obj_class is to force flash compiler to include this class
        private var _responseGeocodingGeometry_obj_class: traveltimeplatform.client.model.ResponseGeocodingGeometry = null;
        [XmlElements(name="responseGeocodingGeometry", type="traveltimeplatform.client.model.ResponseGeocodingGeometry")]
        public var responseGeocodingGeometry: Array = new Array();

        public function getList(): Array{
            return responseGeocodingGeometry;
        }

}

}
