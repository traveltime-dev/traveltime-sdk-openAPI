package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestArrivalTimePeriod;
import traveltimeplatform.client.model.RequestTimeFilterFastProperty;
import traveltimeplatform.client.model.RequestTransportationFast;

    public class RequestTimeFilterFastArrivalManyToOneSearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFastArrivalManyToOneSearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFastArrivalManyToOneSearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterFastArrivalManyToOneSearch = null;
        [XmlElements(name="requestTimeFilterFastArrivalManyToOneSearch", type="traveltimeplatform.client.model.RequestTimeFilterFastArrivalManyToOneSearch")]
        public var requestTimeFilterFastArrivalManyToOneSearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFastArrivalManyToOneSearch;
        }

}

}
