package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterArrivalSearch;
import org.openapitools.model.RequestTimeFilterDepartureSearch;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2021-05-11T08:38:16.330Z[Etc/UTC]")
public class RequestTimeFilter   {
  
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();
  private List<RequestTimeFilterDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterDepartureSearch>();
  private List<RequestTimeFilterArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterArrivalSearch>();

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("locations")
  @NotNull
 @Size(min=1)  public List<RequestLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilter requestTimeFilter = (RequestTimeFilter) o;
    return Objects.equals(locations, requestTimeFilter.locations) &&
        Objects.equals(departureSearches, requestTimeFilter.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeFilter.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilter {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

