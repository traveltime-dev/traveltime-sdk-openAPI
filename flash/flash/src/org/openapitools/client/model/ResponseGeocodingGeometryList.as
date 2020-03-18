package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseGeocodingGeometryList implements ListWrapper {
        // This declaration below of _ResponseGeocodingGeometry_obj_class is to force flash compiler to include this class
        private var _responseGeocodingGeometry_obj_class: org.openapitools.client.model.ResponseGeocodingGeometry = null;
        [XmlElements(name="responseGeocodingGeometry", type="org.openapitools.client.model.ResponseGeocodingGeometry")]
        public var responseGeocodingGeometry: Array = new Array();

        public function getList(): Array{
            return responseGeocodingGeometry;
        }

}

}
