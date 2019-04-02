package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorsResult;

    public class ResponseTimeFilterPostcodeSectorsList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSectors_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSectors_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectors = null;
        [XmlElements(name="responseTimeFilterPostcodeSectors", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectors")]
        public var responseTimeFilterPostcodeSectors: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSectors;
        }

}

}
