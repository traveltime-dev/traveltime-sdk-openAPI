package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcode;
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
 * ResponseTimeFilterPostcodesResult
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-07-14T11:27:13.425Z[Etc/UTC]")
public class ResponseTimeFilterPostcodesResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("postcodes")
  
  private List<ResponseTimeFilterPostcode> postcodes = new ArrayList<>();

  public ResponseTimeFilterPostcodesResult searchId(String searchId) {
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

  public ResponseTimeFilterPostcodesResult postcodes(List<ResponseTimeFilterPostcode> postcodes) {
    this.postcodes = postcodes;
    return this;
  }

  public ResponseTimeFilterPostcodesResult addPostcodesItem(ResponseTimeFilterPostcode postcodesItem) {
    this.postcodes.add(postcodesItem);
    return this;
  }

   /**
   * Get postcodes
   * @return postcodes
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterPostcode> getPostcodes() {
    return postcodes;
  }

  public void setPostcodes(List<ResponseTimeFilterPostcode> postcodes) {
    this.postcodes = postcodes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult = (ResponseTimeFilterPostcodesResult) o;
    return Objects.equals(this.searchId, responseTimeFilterPostcodesResult.searchId) &&
        Objects.equals(this.postcodes, responseTimeFilterPostcodesResult.postcodes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, postcodes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodesResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    postcodes: ").append(toIndentedString(postcodes)).append("\n");
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

