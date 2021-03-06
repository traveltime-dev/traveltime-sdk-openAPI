/**
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

import java.util.*;
import org.openapitools.client.model.ResponseTimeFilterPostcodeDistrict;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseTimeFilterPostcodeDistrictsResult {
  
  @SerializedName("search_id")
  private String searchId = null;
  @SerializedName("districts")
  private List<ResponseTimeFilterPostcodeDistrict> districts = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
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
    return (this.searchId == null ? responseTimeFilterPostcodeDistrictsResult.searchId == null : this.searchId.equals(responseTimeFilterPostcodeDistrictsResult.searchId)) &&
        (this.districts == null ? responseTimeFilterPostcodeDistrictsResult.districts == null : this.districts.equals(responseTimeFilterPostcodeDistrictsResult.districts));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.searchId == null ? 0: this.searchId.hashCode());
    result = 31 * result + (this.districts == null ? 0: this.districts.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeDistrictsResult {\n");
    
    sb.append("  searchId: ").append(searchId).append("\n");
    sb.append("  districts: ").append(districts).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
