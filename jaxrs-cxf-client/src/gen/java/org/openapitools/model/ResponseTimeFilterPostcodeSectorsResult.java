package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeSector;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseTimeFilterPostcodeSectorsResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<ResponseTimeFilterPostcodeSector>();
 /**
   * Get searchId
   * @return searchId
  **/
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterPostcodeSectorsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
   * Get sectors
   * @return sectors
  **/
  @JsonProperty("sectors")
  public List<ResponseTimeFilterPostcodeSector> getSectors() {
    return sectors;
  }

  public void setSectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
  }

  public ResponseTimeFilterPostcodeSectorsResult sectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
    return this;
  }

  public ResponseTimeFilterPostcodeSectorsResult addSectorsItem(ResponseTimeFilterPostcodeSector sectorsItem) {
    this.sectors.add(sectorsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

