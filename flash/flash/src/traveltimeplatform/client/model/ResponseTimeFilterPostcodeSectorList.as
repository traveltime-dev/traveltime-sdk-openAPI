package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorProperties;

    public class ResponseTimeFilterPostcodeSectorList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSector_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSector_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeSector = null;
        [XmlElements(name="responseTimeFilterPostcodeSector", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeSector")]
        public var responseTimeFilterPostcodeSector: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSector;
        }

}

}
