package apimodels;

import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestUnionOnIntersection
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-07-14T11:27:15.847Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestUnionOnIntersection   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("search_ids")
  private List<String> searchIds = new ArrayList<>();

  public RequestUnionOnIntersection id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestUnionOnIntersection searchIds(List<String> searchIds) {
    this.searchIds = searchIds;
    return this;
  }

  public RequestUnionOnIntersection addSearchIdsItem(String searchIdsItem) {
    searchIds.add(searchIdsItem);
    return this;
  }

   /**
   * Get searchIds
   * @return searchIds
  **/
  @NotNull
  public List<String> getSearchIds() {
    return searchIds;
  }

  public void setSearchIds(List<String> searchIds) {
    this.searchIds = searchIds;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestUnionOnIntersection requestUnionOnIntersection = (RequestUnionOnIntersection) o;
    return Objects.equals(id, requestUnionOnIntersection.id) &&
        Objects.equals(searchIds, requestUnionOnIntersection.searchIds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, searchIds);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestUnionOnIntersection {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    searchIds: ").append(toIndentedString(searchIds)).append("\n");
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

