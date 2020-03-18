package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTravelTimeStatisticsList implements ListWrapper {
        // This declaration below of _ResponseTravelTimeStatistics_obj_class is to force flash compiler to include this class
        private var _responseTravelTimeStatistics_obj_class: org.openapitools.client.model.ResponseTravelTimeStatistics = null;
        [XmlElements(name="responseTravelTimeStatistics", type="org.openapitools.client.model.ResponseTravelTimeStatistics")]
        public var responseTravelTimeStatistics: Array = new Array();

        public function getList(): Array{
            return responseTravelTimeStatistics;
        }

}

}
