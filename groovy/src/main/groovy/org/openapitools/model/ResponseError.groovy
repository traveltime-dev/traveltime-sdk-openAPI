package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import java.util.List;

@Canonical
class ResponseError {
    
    Integer httpStatus
    
    Integer errorCode
    
    String description
    
    String documentationLink
    
    Map<String, List<String>> additionalInfo = new HashMap<String, List<String>>()
}
