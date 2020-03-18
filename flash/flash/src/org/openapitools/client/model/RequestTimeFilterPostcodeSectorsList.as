package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.client.model.RequestTimeFilterPostcodeSectorsDepartureSearch;

    public class RequestTimeFilterPostcodeSectorsList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodeSectors_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodeSectors_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodeSectors = null;
        [XmlElements(name="requestTimeFilterPostcodeSectors", type="org.openapitools.client.model.RequestTimeFilterPostcodeSectors")]
        public var requestTimeFilterPostcodeSectors: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodeSectors;
        }

}

}
