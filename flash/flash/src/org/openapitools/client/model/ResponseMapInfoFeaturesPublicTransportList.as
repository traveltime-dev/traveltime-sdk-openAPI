package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseMapInfoFeaturesPublicTransportList implements ListWrapper {
        // This declaration below of _ResponseMapInfoFeaturesPublicTransport_obj_class is to force flash compiler to include this class
        private var _responseMapInfoFeaturesPublicTransport_obj_class: org.openapitools.client.model.ResponseMapInfoFeaturesPublicTransport = null;
        [XmlElements(name="responseMapInfoFeaturesPublicTransport", type="org.openapitools.client.model.ResponseMapInfoFeaturesPublicTransport")]
        public var responseMapInfoFeaturesPublicTransport: Array = new Array();

        public function getList(): Array{
            return responseMapInfoFeaturesPublicTransport;
        }

}

}
