package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTravelTimeStatisticsList implements ListWrapper {
        // This declaration below of _ResponseTravelTimeStatistics_obj_class is to force flash compiler to include this class
        private var _responseTravelTimeStatistics_obj_class: traveltimeplatform.client.model.ResponseTravelTimeStatistics = null;
        [XmlElements(name="responseTravelTimeStatistics", type="traveltimeplatform.client.model.ResponseTravelTimeStatistics")]
        public var responseTravelTimeStatistics: Array = new Array();

        public function getList(): Array{
            return responseTravelTimeStatistics;
        }

}

}
