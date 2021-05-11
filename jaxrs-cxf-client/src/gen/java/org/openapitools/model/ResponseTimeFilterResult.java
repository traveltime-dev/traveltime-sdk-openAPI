package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterLocation;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseTimeFilterResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  private List<ResponseTimeFilterLocation> locations = new ArrayList<ResponseTimeFilterLocation>();

  @ApiModelProperty(required = true, value = "")
  private List<String> unreachable = new ArrayList<String>();
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

  public ResponseTimeFilterResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
   * Get locations
   * @return locations
  **/
  @JsonProperty("locations")
  public List<ResponseTimeFilterLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
  }

  public ResponseTimeFilterResult locations(List<ResponseTimeFilterLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseTimeFilterResult addLocationsItem(ResponseTimeFilterLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
   * Get unreachable
   * @return unreachable
  **/
  @JsonProperty("unreachable")
  public List<String> getUnreachable() {
    return unreachable;
  }

  public void setUnreachable(List<String> unreachable) {
    this.unreachable = unreachable;
  }

  public ResponseTimeFilterResult unreachable(List<String> unreachable) {
    this.unreachable = unreachable;
    return this;
  }

  public ResponseTimeFilterResult addUnreachableItem(String unreachableItem) {
    this.unreachable.add(unreachableItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    unreachable: ").append(toIndentedString(unreachable)).append("\n");
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

