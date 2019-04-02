package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseDistanceBreakdownItem;
import traveltimeplatform.client.model.ResponseFares;
import traveltimeplatform.client.model.ResponseRoute;

    public class ResponseTimeFilterPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterProperties_obj_class: traveltimeplatform.client.model.ResponseTimeFilterProperties = null;
        [XmlElements(name="responseTimeFilterProperties", type="traveltimeplatform.client.model.ResponseTimeFilterProperties")]
        public var responseTimeFilterProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterProperties;
        }

}

}
