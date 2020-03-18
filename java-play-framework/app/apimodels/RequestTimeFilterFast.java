package apimodels;

import apimodels.RequestLocation;
import apimodels.RequestTimeFilterFastArrivalSearches;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterFast
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterFast   {
  @JsonProperty("locations")
  private List<RequestLocation> locations = new ArrayList<>();

  @JsonProperty("arrival_searches")
  private RequestTimeFilterFastArrivalSearches arrivalSearches;

  public RequestTimeFilterFast locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestTimeFilterFast addLocationsItem(RequestLocation locationsItem) {
    locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @NotNull
@Size(min=1)
@Valid
  public List<RequestLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  public RequestTimeFilterFast arrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @NotNull
@Valid
  public RequestTimeFilterFastArrivalSearches getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
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
    RequestTimeFilterFast requestTimeFilterFast = (RequestTimeFilterFast) o;
    return Objects.equals(locations, requestTimeFilterFast.locations) &&
        Objects.equals(arrivalSearches, requestTimeFilterFast.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, arrivalSearches);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFast {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
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

