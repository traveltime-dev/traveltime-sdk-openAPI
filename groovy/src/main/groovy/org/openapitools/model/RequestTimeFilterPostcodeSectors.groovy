package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsDepartureSearch;

@Canonical
class RequestTimeFilterPostcodeSectors {
    List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterPostcodeSectorsDepartureSearch>()

    List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterPostcodeSectorsArrivalSearch>()

}
