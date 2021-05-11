package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcode;
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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseTimeFilterPostcodesResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseTimeFilterPostcode> postcodes = new ArrayList<ResponseTimeFilterPostcode>();
 /**
  * Get searchId
  * @return searchId
  */
  @JsonProperty("search_id")
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  /**
   * Sets the <code>searchId</code> property.
   */
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   * Sets the <code>searchId</code> property.
   */
  public ResponseTimeFilterPostcodesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
  * Get postcodes
  * @return postcodes
  */
  @JsonProperty("postcodes")
  @NotNull
  public List<ResponseTimeFilterPostcode> getPostcodes() {
    return postcodes;
  }

  /**
   * Sets the <code>postcodes</code> property.
   */
  public void setPostcodes(List<ResponseTimeFilterPostcode> postcodes) {
    this.postcodes = postcodes;
  }

  /**
   * Sets the <code>postcodes</code> property.
   */
  public ResponseTimeFilterPostcodesResult postcodes(List<ResponseTimeFilterPostcode> postcodes) {
    this.postcodes = postcodes;
    return this;
  }

  /**
   * Adds a new item to the <code>postcodes</code> list.
   */
  public ResponseTimeFilterPostcodesResult addPostcodesItem(ResponseTimeFilterPostcode postcodesItem) {
    this.postcodes.add(postcodesItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

