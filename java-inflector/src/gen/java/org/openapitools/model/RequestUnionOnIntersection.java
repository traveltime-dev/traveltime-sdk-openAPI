package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2019-04-02T12:37:38.864Z[Etc/UTC]")
public class RequestUnionOnIntersection   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("search_ids")
  private List<String> searchIds = new ArrayList<String>();

  /**
   **/
  public RequestUnionOnIntersection id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public RequestUnionOnIntersection searchIds(List<String> searchIds) {
    this.searchIds = searchIds;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("search_ids")
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

