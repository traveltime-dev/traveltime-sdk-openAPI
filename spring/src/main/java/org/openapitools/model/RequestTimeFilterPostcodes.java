package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodesArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodesDepartureSearch;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestTimeFilterPostcodes
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2019-05-24T09:07:54.982Z[Etc/UTC]")

public class RequestTimeFilterPostcodes   {
  @JsonProperty("departure_searches")
  @Valid
  private List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  @Valid
  private List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = null;

  public RequestTimeFilterPostcodes departureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilterPostcodes addDepartureSearchesItem(RequestTimeFilterPostcodesDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

  /**
   * Get departureSearches
   * @return departureSearches
  */
  @ApiModelProperty(value = "")

  @Valid
@Size(max=10) 
  public List<RequestTimeFilterPostcodesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodes arrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilterPostcodes addArrivalSearchesItem(RequestTimeFilterPostcodesArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

  /**
   * Get arrivalSearches
   * @return arrivalSearches
  */
  @ApiModelProperty(value = "")

  @Valid
@Size(max=10) 
  public List<RequestTimeFilterPostcodesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
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
    RequestTimeFilterPostcodes requestTimeFilterPostcodes = (RequestTimeFilterPostcodes) o;
    return Objects.equals(this.departureSearches, requestTimeFilterPostcodes.departureSearches) &&
        Objects.equals(this.arrivalSearches, requestTimeFilterPostcodes.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodes {\n");
    
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

