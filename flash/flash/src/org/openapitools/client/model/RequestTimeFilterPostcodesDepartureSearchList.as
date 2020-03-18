package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.client.model.RequestTransportation;

    public class RequestTimeFilterPostcodesDepartureSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesDepartureSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesDepartureSearch_obj_class: org.openapitools.client.model.RequestTimeFilterPostcodesDepartureSearch = null;
        [XmlElements(name="requestTimeFilterPostcodesDepartureSearch", type="org.openapitools.client.model.RequestTimeFilterPostcodesDepartureSearch")]
        public var requestTimeFilterPostcodesDepartureSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesDepartureSearch;
        }

}

}
