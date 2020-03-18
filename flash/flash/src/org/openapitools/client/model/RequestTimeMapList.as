package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestTimeMapArrivalSearch;
import org.openapitools.client.model.RequestTimeMapDepartureSearch;
import org.openapitools.client.model.RequestUnionOnIntersection;

    public class RequestTimeMapList implements ListWrapper {
        // This declaration below of _RequestTimeMap_obj_class is to force flash compiler to include this class
        private var _requestTimeMap_obj_class: org.openapitools.client.model.RequestTimeMap = null;
        [XmlElements(name="requestTimeMap", type="org.openapitools.client.model.RequestTimeMap")]
        public var requestTimeMap: Array = new Array();

        public function getList(): Array{
            return requestTimeMap;
        }

}

}
