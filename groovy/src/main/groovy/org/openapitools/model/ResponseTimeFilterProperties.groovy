package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseDistanceBreakdownItem;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;

@Canonical
class ResponseTimeFilterProperties {
    Integer travelTime = 

    Integer distance = 

    List<ResponseDistanceBreakdownItem> distanceBreakdown = new ArrayList<ResponseDistanceBreakdownItem>()

    ResponseFares fares = null

    ResponseRoute route = null

}
