package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;

@Canonical
class RequestTimeFilterPostcodeDistricts {
    List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsDepartureSearch>()

    List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsArrivalSearch>()

}
