package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterFastResult;

    public class ResponseTimeFilterFastList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFast_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFast_obj_class: traveltimeplatform.client.model.ResponseTimeFilterFast = null;
        [XmlElements(name="responseTimeFilterFast", type="traveltimeplatform.client.model.ResponseTimeFilterFast")]
        public var responseTimeFilterFast: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFast;
        }

}

}
