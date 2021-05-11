package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeDistrict;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class ResponseTimeFilterPostcodeDistrictsResult   {
  
  private @Valid String searchId;
  private @Valid List<ResponseTimeFilterPostcodeDistrict> districts = new ArrayList<ResponseTimeFilterPostcodeDistrict>();

  /**
   **/
  public ResponseTimeFilterPostcodeDistrictsResult searchId(String searchId) {
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
  public ResponseTimeFilterPostcodeDistrictsResult districts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("districts")
  @NotNull
  public List<ResponseTimeFilterPostcodeDistrict> getDistricts() {
    return districts;
  }

  public void setDistricts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeDistrictsResult responseTimeFilterPostcodeDistrictsResult = (ResponseTimeFilterPostcodeDistrictsResult) o;
    return Objects.equals(this.searchId, responseTimeFilterPostcodeDistrictsResult.searchId) &&
        Objects.equals(this.districts, responseTimeFilterPostcodeDistrictsResult.districts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, districts);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeDistrictsResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    districts: ").append(toIndentedString(districts)).append("\n");
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

