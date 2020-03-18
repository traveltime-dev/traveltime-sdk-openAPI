package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestRoutesProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestRoutesArrivalSearchList implements ListWrapper {
        // This declaration below of _RequestRoutesArrivalSearch_obj_class is to force flash compiler to include this class
        private var _requestRoutesArrivalSearch_obj_class: org.openapitools.client.model.RequestRoutesArrivalSearch = null;
        [XmlElements(name="requestRoutesArrivalSearch", type="org.openapitools.client.model.RequestRoutesArrivalSearch")]
        public var requestRoutesArrivalSearch: Array = new Array();

        public function getList(): Array{
            return requestRoutesArrivalSearch;
        }

}

}
