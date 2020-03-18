package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestArrivalTimePeriod;
import org.openapitools.client.model.RequestTimeFilterFastProperty;
import org.openapitools.client.model.RequestTransportationFast;

    public class RequestTimeFilterFastArrivalOneToManySearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFastArrivalOneToManySearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFastArrivalOneToManySearch_obj_class: org.openapitools.client.model.RequestTimeFilterFastArrivalOneToManySearch = null;
        [XmlElements(name="requestTimeFilterFastArrivalOneToManySearch", type="org.openapitools.client.model.RequestTimeFilterFastArrivalOneToManySearch")]
        public var requestTimeFilterFastArrivalOneToManySearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFastArrivalOneToManySearch;
        }

}

}
