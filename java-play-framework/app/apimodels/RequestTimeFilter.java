package apimodels;

import apimodels.RequestLocation;
import apimodels.RequestTimeFilterArrivalSearch;
import apimodels.RequestTimeFilterDepartureSearch;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilter
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilter   {
  @JsonProperty("locations")
  @NotNull
@Size(min=1)
@Valid

  private List<RequestLocation> locations = new ArrayList<>();

  @JsonProperty("departure_searches")
  @Size(max=10)
@Valid

  private List<RequestTimeFilterDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  @Size(max=10)
@Valid

  private List<RequestTimeFilterArrivalSearch> arrivalSearches = null;

  public RequestTimeFilter locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestTimeFilter addLocationsItem(RequestLocation locationsItem) {
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

  public RequestTimeFilter departureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilter addDepartureSearchesItem(RequestTimeFilterDepartureSearch departureSearchesItem) {
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
  public List<RequestTimeFilterDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilter arrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilter addArrivalSearchesItem(RequestTimeFilterArrivalSearch arrivalSearchesItem) {
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
  public List<RequestTimeFilterArrivalSearch> getArrivalSearches() {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

