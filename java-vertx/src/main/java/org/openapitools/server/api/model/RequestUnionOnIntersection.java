package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestUnionOnIntersection   {
  
  private String id = ;
  private List<String> searchIds = new ArrayList<>();

  public RequestUnionOnIntersection () {

  }

  public RequestUnionOnIntersection (String id, List<String> searchIds) {
    this.id = id;
    this.searchIds = searchIds;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("search_ids")
  public List<String> getSearchIds() {
    return searchIds;
  }
  public void setSearchIds(List<String> searchIds) {
    this.searchIds = searchIds;
  }


  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
