package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTimeMapProperties;

@Canonical
class ResponseTimeMapWktResult {
    
    String searchId
    
    String shape
    
    ResponseTimeMapProperties properties
}
