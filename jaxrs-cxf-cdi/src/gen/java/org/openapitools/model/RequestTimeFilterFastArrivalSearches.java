package org.openapitools.model;

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
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTimeFilterFastArrivalSearches   {
  
  private List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = null;

  private List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = null;


  /**
   **/
  public RequestTimeFilterFastArrivalSearches manyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("many_to_one")
 @Size(max=10)  public List<RequestTimeFilterFastArrivalManyToOneSearch> getManyToOne() {
    return manyToOne;
  }
  public void setManyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
  }

  public RequestTimeFilterFastArrivalSearches addManyToOneItem(RequestTimeFilterFastArrivalManyToOneSearch manyToOneItem) {
    if (this.manyToOne == null) {
      this.manyToOne = new ArrayList<RequestTimeFilterFastArrivalManyToOneSearch>();
    }
    this.manyToOne.add(manyToOneItem);
    return this;
  }


  /**
   **/
  public RequestTimeFilterFastArrivalSearches oneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.oneToMany = oneToMany;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("one_to_many")
 @Size(max=10)  public List<RequestTimeFilterFastArrivalOneToManySearch> getOneToMany() {
    return oneToMany;
  }
  public void setOneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.oneToMany = oneToMany;
  }

  public RequestTimeFilterFastArrivalSearches addOneToManyItem(RequestTimeFilterFastArrivalOneToManySearch oneToManyItem) {
    if (this.oneToMany == null) {
      this.oneToMany = new ArrayList<RequestTimeFilterFastArrivalOneToManySearch>();
    }
    this.oneToMany.add(oneToManyItem);
    return this;
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

