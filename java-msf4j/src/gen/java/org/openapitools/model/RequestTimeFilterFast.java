package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterFastArrivalSearches;

/**
 * RequestTimeFilterFast
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-11T08:37:55.137Z[Etc/UTC]")
public class RequestTimeFilterFast   {
  @JsonProperty("locations")
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @JsonProperty("arrival_searches")
  private RequestTimeFilterFastArrivalSearches arrivalSearches;

  public RequestTimeFilterFast locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestTimeFilterFast addLocationsItem(RequestLocation locationsItem) {
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

  public RequestTimeFilterFast arrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @ApiModelProperty(required = true, value = "")
  public RequestTimeFilterFastArrivalSearches getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
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
    RequestTimeFilterFast requestTimeFilterFast = (RequestTimeFilterFast) o;
    return Objects.equals(this.locations, requestTimeFilterFast.locations) &&
        Objects.equals(this.arrivalSearches, requestTimeFilterFast.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, arrivalSearches);
  }

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

