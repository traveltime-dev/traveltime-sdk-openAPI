package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestUnionOnIntersection  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private List<String> searchIds = new ArrayList<String>();
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestUnionOnIntersection id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get searchIds
   * @return searchIds
  **/
  @JsonProperty("search_ids")
  @NotNull
  public List<String> getSearchIds() {
    return searchIds;
  }

  public void setSearchIds(List<String> searchIds) {
    this.searchIds = searchIds;
  }

  public RequestUnionOnIntersection searchIds(List<String> searchIds) {
    this.searchIds = searchIds;
    return this;
  }

  public RequestUnionOnIntersection addSearchIdsItem(String searchIdsItem) {
    this.searchIds.add(searchIdsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

