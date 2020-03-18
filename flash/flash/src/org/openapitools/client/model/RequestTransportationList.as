package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTransportationList implements ListWrapper {
        // This declaration below of _RequestTransportation_obj_class is to force flash compiler to include this class
        private var _requestTransportation_obj_class: org.openapitools.client.model.RequestTransportation = null;
        [XmlElements(name="requestTransportation", type="org.openapitools.client.model.RequestTransportation")]
        public var requestTransportation: Array = new Array();

        public function getList(): Array{
            return requestTransportation;
        }

}

}
