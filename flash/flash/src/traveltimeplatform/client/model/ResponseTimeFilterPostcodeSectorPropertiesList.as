package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTravelTimeStatistics;

    public class ResponseTimeFilterPostcodeSectorPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodeSectorProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodeSectorProperties_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorProperties = null;
        [XmlElements(name="responseTimeFilterPostcodeSectorProperties", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectorProperties")]
        public var responseTimeFilterPostcodeSectorProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodeSectorProperties;
        }

}

}
