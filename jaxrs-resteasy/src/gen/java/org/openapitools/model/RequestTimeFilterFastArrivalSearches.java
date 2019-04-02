package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterFastArrivalManyToOneSearch;
import org.openapitools.model.RequestTimeFilterFastArrivalOneToManySearch;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2019-04-02T12:38:00.929Z[Etc/UTC]")
public class RequestTimeFilterFastArrivalSearches   {
  
  private List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = new ArrayList<RequestTimeFilterFastArrivalManyToOneSearch>();
  private List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = new ArrayList<RequestTimeFilterFastArrivalOneToManySearch>();

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("many_to_one")
 @Size(max=10)  public List<RequestTimeFilterFastArrivalManyToOneSearch> getManyToOne() {
    return manyToOne;
  }
  public void setManyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("one_to_many")
 @Size(max=10)  public List<RequestTimeFilterFastArrivalOneToManySearch> getOneToMany() {
    return oneToMany;
  }
  public void setOneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.oneToMany = oneToMany;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

