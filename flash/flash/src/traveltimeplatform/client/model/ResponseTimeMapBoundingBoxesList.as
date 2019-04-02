package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseTimeMapBoundingBoxesResult;

    public class ResponseTimeMapBoundingBoxesList implements ListWrapper {
        // This declaration below of _ResponseTimeMapBoundingBoxes_obj_class is to force flash compiler to include this class
        private var _responseTimeMapBoundingBoxes_obj_class: traveltimeplatform.client.model.ResponseTimeMapBoundingBoxes = null;
        [XmlElements(name="responseTimeMapBoundingBoxes", type="traveltimeplatform.client.model.ResponseTimeMapBoundingBoxes")]
        public var responseTimeMapBoundingBoxes: Array = new Array();

        public function getList(): Array{
            return responseTimeMapBoundingBoxes;
        }

}

}
