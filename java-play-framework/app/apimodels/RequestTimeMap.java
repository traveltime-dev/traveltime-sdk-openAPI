package apimodels;

import apimodels.RequestTimeMapArrivalSearch;
import apimodels.RequestTimeMapDepartureSearch;
import apimodels.RequestUnionOnIntersection;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeMap
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-05-24T09:06:51.855Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeMap   {
  @JsonProperty("departure_searches")
  private List<RequestTimeMapDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  private List<RequestTimeMapArrivalSearch> arrivalSearches = null;

  @JsonProperty("unions")
  private List<RequestUnionOnIntersection> unions = null;

  @JsonProperty("intersections")
  private List<RequestUnionOnIntersection> intersections = null;

  public RequestTimeMap departureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeMap addDepartureSearchesItem(RequestTimeMapDepartureSearch departureSearchesItem) {
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
  @Size(max=10)
@Valid
  public List<RequestTimeMapDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeMap arrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeMap addArrivalSearchesItem(RequestTimeMapArrivalSearch arrivalSearchesItem) {
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
  @Size(max=10)
@Valid
  public List<RequestTimeMapArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeMap unions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
    return this;
  }

  public RequestTimeMap addUnionsItem(RequestUnionOnIntersection unionsItem) {
    if (unions == null) {
      unions = new ArrayList<>();
    }
    unions.add(unionsItem);
    return this;
  }

   /**
   * Get unions
   * @return unions
  **/
  @Size(max=10)
@Valid
  public List<RequestUnionOnIntersection> getUnions() {
    return unions;
  }

  public void setUnions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
  }

  public RequestTimeMap intersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
    return this;
  }

  public RequestTimeMap addIntersectionsItem(RequestUnionOnIntersection intersectionsItem) {
    if (intersections == null) {
      intersections = new ArrayList<>();
    }
    intersections.add(intersectionsItem);
    return this;
  }

   /**
   * Get intersections
   * @return intersections
  **/
  @Size(max=10)
@Valid
  public List<RequestUnionOnIntersection> getIntersections() {
    return intersections;
  }

  public void setIntersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeMap requestTimeMap = (RequestTimeMap) o;
    return Objects.equals(departureSearches, requestTimeMap.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeMap.arrivalSearches) &&
        Objects.equals(unions, requestTimeMap.unions) &&
        Objects.equals(intersections, requestTimeMap.intersections);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches, unions, intersections);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMap {\n");
    
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
    sb.append("    unions: ").append(toIndentedString(unions)).append("\n");
    sb.append("    intersections: ").append(toIndentedString(intersections)).append("\n");
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

