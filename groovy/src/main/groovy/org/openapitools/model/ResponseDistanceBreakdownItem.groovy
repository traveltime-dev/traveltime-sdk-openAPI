package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTransportationMode;

@Canonical
class ResponseDistanceBreakdownItem {
    
    ResponseTransportationMode mode
    
    Integer distance
}
