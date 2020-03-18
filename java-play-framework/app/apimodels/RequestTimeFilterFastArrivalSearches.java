package apimodels;

import apimodels.RequestTimeFilterFastArrivalManyToOneSearch;
import apimodels.RequestTimeFilterFastArrivalOneToManySearch;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterFastArrivalSearches
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterFastArrivalSearches   {
  @JsonProperty("many_to_one")
  private List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = null;

  @JsonProperty("one_to_many")
  private List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = null;

  public RequestTimeFilterFastArrivalSearches manyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
    return this;
  }

  public RequestTimeFilterFastArrivalSearches addManyToOneItem(RequestTimeFilterFastArrivalManyToOneSearch manyToOneItem) {
    if (manyToOne == null) {
      manyToOne = new ArrayList<>();
    }
    manyToOne.add(manyToOneItem);
    return this;
  }

   /**
   * Get manyToOne
   * @return manyToOne
  **/
  @Size(max=10)
@Valid
  public List<RequestTimeFilterFastArrivalManyToOneSearch> getManyToOne() {
    return manyToOne;
  }

  public void setManyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne) {
    this.manyToOne = manyToOne;
  }

  public RequestTimeFilterFastArrivalSearches oneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany) {
    this.oneToMany = oneToMany;
    return this;
  }

  public RequestTimeFilterFastArrivalSearches addOneToManyItem(RequestTimeFilterFastArrivalOneToManySearch oneToManyItem) {
    if (oneToMany == null) {
      oneToMany = new ArrayList<>();
    }
    oneToMany.add(oneToManyItem);
    return this;
  }

   /**
   * Get oneToMany
   * @return oneToMany
  **/
  @Size(max=10)
@Valid
  public List<RequestTimeFilterFastArrivalOneToManySearch> getOneToMany() {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

