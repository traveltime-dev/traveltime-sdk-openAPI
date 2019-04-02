package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.RequestTimeMapArrivalSearch;
import traveltimeplatform.client.model.RequestTimeMapDepartureSearch;
import traveltimeplatform.client.model.RequestUnionOnIntersection;

    public class RequestTimeMapList implements ListWrapper {
        // This declaration below of _RequestTimeMap_obj_class is to force flash compiler to include this class
        private var _requestTimeMap_obj_class: traveltimeplatform.client.model.RequestTimeMap = null;
        [XmlElements(name="requestTimeMap", type="traveltimeplatform.client.model.RequestTimeMap")]
        public var requestTimeMap: Array = new Array();

        public function getList(): Array{
            return requestTimeMap;
        }

}

}
