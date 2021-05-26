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
import org.openapitools.model.RequestTimeFilterFastArrivalSearches;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class RequestTimeFilterFast   {
  

  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  private RequestTimeFilterFastArrivalSearches arrivalSearches;

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
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_searches")
  @NotNull
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
    return Objects.equals(locations, requestTimeFilterFast.locations) &&
        Objects.equals(arrivalSearches, requestTimeFilterFast.arrivalSearches);
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

