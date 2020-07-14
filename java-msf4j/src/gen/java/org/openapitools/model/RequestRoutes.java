package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestRoutesArrivalSearch;
import org.openapitools.model.RequestRoutesDepartureSearch;

/**
 * RequestRoutes
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2020-07-14T11:27:11.038Z[Etc/UTC]")
public class RequestRoutes   {
  @JsonProperty("locations")
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @JsonProperty("departure_searches")
  private List<RequestRoutesDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  private List<RequestRoutesArrivalSearch> arrivalSearches = null;

  public RequestRoutes locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestRoutes addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  public RequestRoutes departureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestRoutes addDepartureSearchesItem(RequestRoutesDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestRoutesDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

   /**
   * Get departureSearches
   * @return departureSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestRoutes arrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestRoutes addArrivalSearchesItem(RequestRoutesArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<RequestRoutesArrivalSearch>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRoutes requestRoutes = (RequestRoutes) o;
    return Objects.equals(this.locations, requestRoutes.locations) &&
        Objects.equals(this.departureSearches, requestRoutes.departureSearches) &&
        Objects.equals(this.arrivalSearches, requestRoutes.arrivalSearches);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

