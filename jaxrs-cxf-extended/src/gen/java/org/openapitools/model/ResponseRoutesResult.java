package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseRoutesLocation;
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


public class ResponseRoutesResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseRoutesLocation> locations = new ArrayList<ResponseRoutesLocation>();

  @ApiModelProperty(required = true, value = "")
  private List<String> unreachable = new ArrayList<String>();
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
  public ResponseRoutesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
  * Get locations
  * @return locations
  */
  @JsonProperty("locations")
  @NotNull
  public List<ResponseRoutesLocation> getLocations() {
    return locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public void setLocations(List<ResponseRoutesLocation> locations) {
    this.locations = locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public ResponseRoutesResult locations(List<ResponseRoutesLocation> locations) {
    this.locations = locations;
    return this;
  }

  /**
   * Adds a new item to the <code>locations</code> list.
   */
  public ResponseRoutesResult addLocationsItem(ResponseRoutesLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
  * Get unreachable
  * @return unreachable
  */
  @JsonProperty("unreachable")
  @NotNull
  public List<String> getUnreachable() {
    return unreachable;
  }

  /**
   * Sets the <code>unreachable</code> property.
   */
  public void setUnreachable(List<String> unreachable) {
    this.unreachable = unreachable;
  }

  /**
   * Sets the <code>unreachable</code> property.
   */
  public ResponseRoutesResult unreachable(List<String> unreachable) {
    this.unreachable = unreachable;
    return this;
  }

  /**
   * Adds a new item to the <code>unreachable</code> list.
   */
  public ResponseRoutesResult addUnreachableItem(String unreachableItem) {
    this.unreachable.add(unreachableItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesResult {\n");
    
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

