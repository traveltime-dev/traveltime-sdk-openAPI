package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestLocation;
import org.openapitools.client.model.RequestTimeFilterFastArrivalSearches;

    public class RequestTimeFilterFastList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFast_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFast_obj_class: org.openapitools.client.model.RequestTimeFilterFast = null;
        [XmlElements(name="requestTimeFilterFast", type="org.openapitools.client.model.RequestTimeFilterFast")]
        public var requestTimeFilterFast: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFast;
        }

}

}
