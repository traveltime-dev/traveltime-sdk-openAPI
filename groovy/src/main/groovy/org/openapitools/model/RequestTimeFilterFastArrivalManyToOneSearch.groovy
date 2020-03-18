package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestArrivalTimePeriod;
import org.openapitools.model.RequestTimeFilterFastProperty;
import org.openapitools.model.RequestTransportationFast;

@Canonical
class RequestTimeFilterFastArrivalManyToOneSearch {
    
    String id
    
    String arrivalLocationId
    
    List<String> departureLocationIds = new ArrayList<String>()
    
    RequestTransportationFast transportation
    
    Integer travelTime
    
    RequestArrivalTimePeriod arrivalTimePeriod
    
    List<RequestTimeFilterFastProperty> properties = new ArrayList<RequestTimeFilterFastProperty>()
}
