package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseGeocodingGeometry;
import org.openapitools.client.model.ResponseGeocodingProperties;

    public class ResponseGeocodingGeoJsonFeatureList implements ListWrapper {
        // This declaration below of _ResponseGeocodingGeoJsonFeature_obj_class is to force flash compiler to include this class
        private var _responseGeocodingGeoJsonFeature_obj_class: org.openapitools.client.model.ResponseGeocodingGeoJsonFeature = null;
        [XmlElements(name="responseGeocodingGeoJsonFeature", type="org.openapitools.client.model.ResponseGeocodingGeoJsonFeature")]
        public var responseGeocodingGeoJsonFeature: Array = new Array();

        public function getList(): Array{
            return responseGeocodingGeoJsonFeature;
        }

}

}
