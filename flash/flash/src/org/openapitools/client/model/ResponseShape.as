package org.openapitools.client.model {

import org.openapitools.client.model.Coords;

    [XmlRootNode(name="ResponseShape")]
    public class ResponseShape {
                // This declaration below of _shell_obj_class is to force flash compiler to include this class
        private var _shell_obj_class: Array = null;
        [XmlElementWrapper(name="shell")]
        [XmlElements(name="shell", type="Array")]
                public var shell: Array = new Array();
                // This declaration below of _holes_obj_class is to force flash compiler to include this class
        private var _holes_obj_class: Array = null;
        [XmlElementWrapper(name="holes")]
        [XmlElements(name="holes", type="Array")]
                public var holes: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseShape: ";
        str += " (shell: " + shell + ")";
        str += " (holes: " + holes + ")";
        return str;
    }

}

}
