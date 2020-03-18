package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTransportationFastList implements ListWrapper {
        // This declaration below of _RequestTransportationFast_obj_class is to force flash compiler to include this class
        private var _requestTransportationFast_obj_class: org.openapitools.client.model.RequestTransportationFast = null;
        [XmlElements(name="requestTransportationFast", type="org.openapitools.client.model.RequestTransportationFast")]
        public var requestTransportationFast: Array = new Array();

        public function getList(): Array{
            return requestTransportationFast;
        }

}

}
