package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseFaresFast;

    public class ResponseTimeFilterFastPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFastProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFastProperties_obj_class: traveltimeplatform.client.model.ResponseTimeFilterFastProperties = null;
        [XmlElements(name="responseTimeFilterFastProperties", type="traveltimeplatform.client.model.ResponseTimeFilterFastProperties")]
        public var responseTimeFilterFastProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFastProperties;
        }

}

}
