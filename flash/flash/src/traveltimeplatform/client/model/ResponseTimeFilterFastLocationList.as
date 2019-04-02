package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeFilterFastProperties;

    public class ResponseTimeFilterFastLocationList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterFastLocation_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterFastLocation_obj_class: traveltimeplatform.client.model.ResponseTimeFilterFastLocation = null;
        [XmlElements(name="responseTimeFilterFastLocation", type="traveltimeplatform.client.model.ResponseTimeFilterFastLocation")]
        public var responseTimeFilterFastLocation: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterFastLocation;
        }

}

}
