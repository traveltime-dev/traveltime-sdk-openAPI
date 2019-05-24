package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterProperties;

@Canonical
class ResponseTimeFilterLocation {
    
    String id
    
    List<ResponseTimeFilterProperties> properties = new ArrayList<ResponseTimeFilterProperties>()
}
