package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodesArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodesDepartureSearch;

@Canonical
class RequestTimeFilterPostcodes {
    List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterPostcodesDepartureSearch>()

    List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterPostcodesArrivalSearch>()

}
