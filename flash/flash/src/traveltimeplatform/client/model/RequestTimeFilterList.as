package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestLocation;
import traveltimeplatform.client.model.RequestTimeFilterArrivalSearch;
import traveltimeplatform.client.model.RequestTimeFilterDepartureSearch;

    public class RequestTimeFilterList implements ListWrapper {
        // This declaration below of _RequestTimeFilter_obj_class is to force flash compiler to include this class
        private var _requestTimeFilter_obj_class: traveltimeplatform.client.model.RequestTimeFilter = null;
        [XmlElements(name="requestTimeFilter", type="traveltimeplatform.client.model.RequestTimeFilter")]
        public var requestTimeFilter: Array = new Array();

        public function getList(): Array{
            return requestTimeFilter;
        }

}

}
