package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestArrivalTimePeriod;
import traveltimeplatform.client.model.RequestTimeFilterFastProperty;
import traveltimeplatform.client.model.RequestTransportationFast;

    public class RequestTimeFilterFastArrivalOneToManySearchList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFastArrivalOneToManySearch_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFastArrivalOneToManySearch_obj_class: traveltimeplatform.client.model.RequestTimeFilterFastArrivalOneToManySearch = null;
        [XmlElements(name="requestTimeFilterFastArrivalOneToManySearch", type="traveltimeplatform.client.model.RequestTimeFilterFastArrivalOneToManySearch")]
        public var requestTimeFilterFastArrivalOneToManySearch: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFastArrivalOneToManySearch;
        }

}

}
