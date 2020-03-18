package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTravelTimeStatistics;

@Canonical
class ResponseTimeFilterPostcodeSectorProperties {
    
    ResponseTravelTimeStatistics travelTimeReachable
    
    ResponseTravelTimeStatistics travelTimeAll
    
    Double coverage
}
