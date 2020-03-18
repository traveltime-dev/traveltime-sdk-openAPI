package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;

@Canonical
class ResponseRoutesProperties {
    
    Integer travelTime
    
    Integer distance
    
    ResponseFares fares
    
    ResponseRoute route
}
