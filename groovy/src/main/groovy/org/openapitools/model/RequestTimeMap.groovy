package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeMapArrivalSearch;
import org.openapitools.model.RequestTimeMapDepartureSearch;
import org.openapitools.model.RequestUnionOnIntersection;

@Canonical
class RequestTimeMap {
    List<RequestTimeMapDepartureSearch> departureSearches = new ArrayList<RequestTimeMapDepartureSearch>()

    List<RequestTimeMapArrivalSearch> arrivalSearches = new ArrayList<RequestTimeMapArrivalSearch>()

    List<RequestUnionOnIntersection> unions = new ArrayList<RequestUnionOnIntersection>()

    List<RequestUnionOnIntersection> intersections = new ArrayList<RequestUnionOnIntersection>()

}
