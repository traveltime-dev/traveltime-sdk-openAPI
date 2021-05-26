package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeDistrict;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeDistrictsResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("districts")
  private List<ResponseTimeFilterPostcodeDistrict> districts = new ArrayList<ResponseTimeFilterPostcodeDistrict>();

  /**
   **/
  public ResponseTimeFilterPostcodeDistrictsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("search_id")
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
    return Objects.equals(searchId, responseTimeFilterPostcodeDistrictsResult.searchId) &&
        Objects.equals(districts, responseTimeFilterPostcodeDistrictsResult.districts);
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

