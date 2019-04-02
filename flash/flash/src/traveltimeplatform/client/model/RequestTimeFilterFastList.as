package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestLocation;
import traveltimeplatform.client.model.RequestTimeFilterFastArrivalSearches;

    public class RequestTimeFilterFastList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFast_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFast_obj_class: traveltimeplatform.client.model.RequestTimeFilterFast = null;
        [XmlElements(name="requestTimeFilterFast", type="traveltimeplatform.client.model.RequestTimeFilterFast")]
        public var requestTimeFilterFast: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFast;
        }

}

}
