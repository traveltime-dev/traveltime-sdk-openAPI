package apimodels;

import apimodels.RequestLocation;
import apimodels.RequestRoutesArrivalSearch;
import apimodels.RequestRoutesDepartureSearch;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestRoutes
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestRoutes   {
  @JsonProperty("locations")
  @NotNull
@Size(min=1)
@Valid

  private List<RequestLocation> locations = new ArrayList<>();

  @JsonProperty("departure_searches")
  @Size(max=10)
@Valid

  private List<RequestRoutesDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  @Size(max=10)
@Valid

  private List<RequestRoutesArrivalSearch> arrivalSearches = null;

  public RequestRoutes locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestRoutes addLocationsItem(RequestLocation locationsItem) {
    locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
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
    if (departureSearches == null) {
      departureSearches = new ArrayList<>();
    }
    departureSearches.add(departureSearchesItem);
    return this;
  }

   /**
   * Get departureSearches
   * @return departureSearches
  **/
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
    if (arrivalSearches == null) {
      arrivalSearches = new ArrayList<>();
    }
    arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

