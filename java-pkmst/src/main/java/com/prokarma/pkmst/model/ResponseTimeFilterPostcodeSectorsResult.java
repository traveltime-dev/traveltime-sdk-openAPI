package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcodeSector;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseTimeFilterPostcodeSectorsResult
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-03-18T07:53:55.564Z[Etc/UTC]")

public class ResponseTimeFilterPostcodeSectorsResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("sectors")
  
  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectorsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  @ApiModelProperty(required = true, value = "")
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterPostcodeSectorsResult sectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
    return this;
  }

  public ResponseTimeFilterPostcodeSectorsResult addSectorsItem(ResponseTimeFilterPostcodeSector sectorsItem) {
    this.sectors.add(sectorsItem);
    return this;
  }

   /**
   * Get sectors
   * @return sectors
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterPostcodeSector> getSectors() {
    return sectors;
  }

  public void setSectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeSectorsResult responseTimeFilterPostcodeSectorsResult = (ResponseTimeFilterPostcodeSectorsResult) o;
    return Objects.equals(this.searchId, responseTimeFilterPostcodeSectorsResult.searchId) &&
        Objects.equals(this.sectors, responseTimeFilterPostcodeSectorsResult.sectors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, sectors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSectorsResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    sectors: ").append(toIndentedString(sectors)).append("\n");
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

