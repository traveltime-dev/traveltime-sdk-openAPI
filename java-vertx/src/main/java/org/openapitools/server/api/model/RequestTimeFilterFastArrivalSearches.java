package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestTimeFilterFastArrivalManyToOneSearch;
import org.openapitools.server.api.model.RequestTimeFilterFastArrivalOneToManySearch;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestTimeFilterFastArrivalSearches   {
  
  private List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = new ArrayList<>();
  private List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = new ArrayList<>();

  public RequestTimeFilterFastArrivalSearches () {

  }

  public RequestTimeFilterFastArrivalSearches (List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne, List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.manyToOne = manyToOne;
    this.oneToMany = oneToMany;
  }

    
  @JsonProperty("many_to_one")
  public List<RequestTimeFilterFastArrivalManyToOneSearch> getManyToOne() {
    return manyToOne;
  }
  public void setManyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
  }

    
  @JsonProperty("one_to_many")
  public List<RequestTimeFilterFastArrivalOneToManySearch> getOneToMany() {
    return oneToMany;
  }
  public void setOneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.oneToMany = oneToMany;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterFastArrivalSearches requestTimeFilterFastArrivalSearches = (RequestTimeFilterFastArrivalSearches) o;
    return Objects.equals(manyToOne, requestTimeFilterFastArrivalSearches.manyToOne) &&
        Objects.equals(oneToMany, requestTimeFilterFastArrivalSearches.oneToMany);
  }

  @Override
  public int hashCode() {
    return Objects.hash(manyToOne, oneToMany);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalSearches {\n");
    
    sb.append("    manyToOne: ").append(toIndentedString(manyToOne)).append("\n");
    sb.append("    oneToMany: ").append(toIndentedString(oneToMany)).append("\n");
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
