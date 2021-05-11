package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeDistrict;
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

public class ResponseTimeFilterPostcodeDistrictsResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseTimeFilterPostcodeDistrict> districts = new ArrayList<ResponseTimeFilterPostcodeDistrict>();
 /**
   * Get searchId
   * @return searchId
  **/
  @JsonProperty("search_id")
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterPostcodeDistrictsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
   * Get districts
   * @return districts
  **/
  @JsonProperty("districts")
  @NotNull
  public List<ResponseTimeFilterPostcodeDistrict> getDistricts() {
    return districts;
  }

  public void setDistricts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
  }

  public ResponseTimeFilterPostcodeDistrictsResult districts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
    return this;
  }

  public ResponseTimeFilterPostcodeDistrictsResult addDistrictsItem(ResponseTimeFilterPostcodeDistrict districtsItem) {
    this.districts.add(districtsItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

