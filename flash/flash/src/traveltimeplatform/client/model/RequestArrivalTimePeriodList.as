package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestArrivalTimePeriodList implements ListWrapper {
        // This declaration below of _RequestArrivalTimePeriod_obj_class is to force flash compiler to include this class
        private var _requestArrivalTimePeriod_obj_class: traveltimeplatform.client.model.RequestArrivalTimePeriod = null;
        [XmlElements(name="requestArrivalTimePeriod", type="traveltimeplatform.client.model.RequestArrivalTimePeriod")]
        public var requestArrivalTimePeriod: Array = new Array();

        public function getList(): Array{
            return requestArrivalTimePeriod;
        }

}

}
