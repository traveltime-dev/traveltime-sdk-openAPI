package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcode;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseTimeFilterPostcodesResult   {
  
  private @Valid String searchId;
  private @Valid List<ResponseTimeFilterPostcode> postcodes = new ArrayList<ResponseTimeFilterPostcode>();

  /**
   **/
  public ResponseTimeFilterPostcodesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("search_id")
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

/**
   **/
  public ResponseTimeFilterPostcodesResult postcodes(List<ResponseTimeFilterPostcode> postcodes) {
    this.postcodes = postcodes;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("postcodes")
  @NotNull
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

