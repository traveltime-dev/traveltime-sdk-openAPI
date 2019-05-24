package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseFaresFast;

@Canonical
class ResponseTimeFilterFastProperties {
    
    Integer travelTime
    
    ResponseFaresFast fares = null
}
