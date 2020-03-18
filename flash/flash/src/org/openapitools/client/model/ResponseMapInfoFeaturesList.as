package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseMapInfoFeaturesPublicTransport;

    public class ResponseMapInfoFeaturesList implements ListWrapper {
        // This declaration below of _ResponseMapInfoFeatures_obj_class is to force flash compiler to include this class
        private var _responseMapInfoFeatures_obj_class: org.openapitools.client.model.ResponseMapInfoFeatures = null;
        [XmlElements(name="responseMapInfoFeatures", type="org.openapitools.client.model.ResponseMapInfoFeatures")]
        public var responseMapInfoFeatures: Array = new Array();

        public function getList(): Array{
            return responseMapInfoFeatures;
        }

}

}
