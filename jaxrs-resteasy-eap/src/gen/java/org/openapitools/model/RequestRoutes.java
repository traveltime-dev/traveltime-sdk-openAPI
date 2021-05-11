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
import org.openapitools.model.RequestRoutesArrivalSearch;
import org.openapitools.model.RequestRoutesDepartureSearch;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-11T08:38:18.755Z[Etc/UTC]")
public class RequestRoutes   {
  

  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  private List<RequestRoutesDepartureSearch> departureSearches = new ArrayList<RequestRoutesDepartureSearch>();

  private List<RequestRoutesArrivalSearch> arrivalSearches = new ArrayList<RequestRoutesArrivalSearch>();

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
 @Size(max=10)  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
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
    RequestRoutes requestRoutes = (RequestRoutes) o;
    return Objects.equals(locations, requestRoutes.locations) &&
        Objects.equals(departureSearches, requestRoutes.departureSearches) &&
        Objects.equals(arrivalSearches, requestRoutes.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutes {\n");
    
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

