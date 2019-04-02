package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterResult;

    public class ResponseTimeFilterList implements ListWrapper {
        // This declaration below of _ResponseTimeFilter_obj_class is to force flash compiler to include this class
        private var _responseTimeFilter_obj_class: traveltimeplatform.client.model.ResponseTimeFilter = null;
        [XmlElements(name="responseTimeFilter", type="traveltimeplatform.client.model.ResponseTimeFilter")]
        public var responseTimeFilter: Array = new Array();

        public function getList(): Array{
            return responseTimeFilter;
        }

}

}
