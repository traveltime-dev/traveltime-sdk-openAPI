package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTravelTimeStatistics;

@Canonical
class ResponseTimeFilterPostcodeDistrictProperties {
    
    ResponseTravelTimeStatistics travelTimeReachable = null
    
    ResponseTravelTimeStatistics travelTimeAll = null
    
    Double coverage
}
