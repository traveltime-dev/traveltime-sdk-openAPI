package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseBoundingBox;
import traveltimeplatform.client.model.ResponseTimeMapProperties;

    public class ResponseTimeMapBoundingBoxesResultList implements ListWrapper {
        // This declaration below of _ResponseTimeMapBoundingBoxesResult_obj_class is to force flash compiler to include this class
        private var _responseTimeMapBoundingBoxesResult_obj_class: traveltimeplatform.client.model.ResponseTimeMapBoundingBoxesResult = null;
        [XmlElements(name="responseTimeMapBoundingBoxesResult", type="traveltimeplatform.client.model.ResponseTimeMapBoundingBoxesResult")]
        public var responseTimeMapBoundingBoxesResult: Array = new Array();

        public function getList(): Array{
            return responseTimeMapBoundingBoxesResult;
        }

}

}
