package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseMapInfoFeatures;

    public class ResponseGeocodingPropertiesList implements ListWrapper {
        // This declaration below of _ResponseGeocodingProperties_obj_class is to force flash compiler to include this class
        private var _responseGeocodingProperties_obj_class: org.openapitools.client.model.ResponseGeocodingProperties = null;
        [XmlElements(name="responseGeocodingProperties", type="org.openapitools.client.model.ResponseGeocodingProperties")]
        public var responseGeocodingProperties: Array = new Array();

        public function getList(): Array{
            return responseGeocodingProperties;
        }

}

}
