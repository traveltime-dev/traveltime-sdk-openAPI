/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.ResponseTimeFilterPostcode;

/**
 * ResponseTimeFilterPostcodesResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-26T18:49:54.230Z[Etc/UTC]")
public class ResponseTimeFilterPostcodesResult {
  public static final String SERIALIZED_NAME_SEARCH_ID = "search_id";
  @SerializedName(SERIALIZED_NAME_SEARCH_ID)
  private String searchId;

  public static final String SERIALIZED_NAME_POSTCODES = "postcodes";
  @SerializedName(SERIALIZED_NAME_POSTCODES)
  private List<ResponseTimeFilterPostcode> postcodes = new ArrayList<ResponseTimeFilterPostcode>();


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
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

