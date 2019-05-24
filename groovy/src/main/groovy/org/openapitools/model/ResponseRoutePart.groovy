package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.ResponseTransportationMode;

@Canonical
class ResponseRoutePart {
    
    String id
    
    String type
    
    ResponseTransportationMode mode
    
    String directions
    
    Integer distance
    
    Integer travelTime
    
    List<Coords> coords = new ArrayList<Coords>()
    
    String direction
    
    String road
    
    String turn
    
    String line
    
    String departureStation
    
    String arrivalStation
    
    String departsAt
    
    String arrivesAt
    
    Integer numStops
}
