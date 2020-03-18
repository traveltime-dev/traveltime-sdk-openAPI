package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ResponseFareTicket;

    public class ResponseFaresFastList implements ListWrapper {
        // This declaration below of _ResponseFaresFast_obj_class is to force flash compiler to include this class
        private var _responseFaresFast_obj_class: org.openapitools.client.model.ResponseFaresFast = null;
        [XmlElements(name="responseFaresFast", type="org.openapitools.client.model.ResponseFaresFast")]
        public var responseFaresFast: Array = new Array();

        public function getList(): Array{
            return responseFaresFast;
        }

}

}
