package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class RequestTransportation {
    
    String type
    
    Boolean disableBorderCrossing
    
    Integer ptChangeDelay
    
    Integer walkingTime
    
    Integer drivingTimeToStation
    
    Integer cyclingTimeToStation
    
    Integer parkingTime
    
    Integer boardingTime
}
