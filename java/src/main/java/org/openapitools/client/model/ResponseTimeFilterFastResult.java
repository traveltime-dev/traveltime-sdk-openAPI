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
import org.openapitools.client.model.ResponseTimeFilterFastLocation;

/**
 * ResponseTimeFilterFastResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-26T18:49:54.230Z[Etc/UTC]")
public class ResponseTimeFilterFastResult {
  public static final String SERIALIZED_NAME_SEARCH_ID = "search_id";
  @SerializedName(SERIALIZED_NAME_SEARCH_ID)
  private String searchId;

  public static final String SERIALIZED_NAME_LOCATIONS = "locations";
  @SerializedName(SERIALIZED_NAME_LOCATIONS)
  private List<ResponseTimeFilterFastLocation> locations = new ArrayList<ResponseTimeFilterFastLocation>();

  public static final String SERIALIZED_NAME_UNREACHABLE = "unreachable";
  @SerializedName(SERIALIZED_NAME_UNREACHABLE)
  private List<String> unreachable = new ArrayList<String>();


  public ResponseTimeFilterFastResult searchId(String searchId) {
    
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


  public ResponseTimeFilterFastResult locations(List<ResponseTimeFilterFastLocation> locations) {
    
    this.locations = locations;
    return this;
  }

  public ResponseTimeFilterFastResult addLocationsItem(ResponseTimeFilterFastLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @ApiModelProperty(required = true, value = "")

  public List<ResponseTimeFilterFastLocation> getLocations() {
    return locations;
  }


  public void setLocations(List<ResponseTimeFilterFastLocation> locations) {
    this.locations = locations;
  }


  public ResponseTimeFilterFastResult unreachable(List<String> unreachable) {
    
    this.unreachable = unreachable;
    return this;
  }

  public ResponseTimeFilterFastResult addUnreachableItem(String unreachableItem) {
    this.unreachable.add(unreachableItem);
    return this;
  }

   /**
   * Get unreachable
   * @return unreachable
  **/
  @ApiModelProperty(required = true, value = "")

  public List<String> getUnreachable() {
    return unreachable;
  }


  public void setUnreachable(List<String> unreachable) {
    this.unreachable = unreachable;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterFastResult responseTimeFilterFastResult = (ResponseTimeFilterFastResult) o;
    return Objects.equals(this.searchId, responseTimeFilterFastResult.searchId) &&
        Objects.equals(this.locations, responseTimeFilterFastResult.locations) &&
        Objects.equals(this.unreachable, responseTimeFilterFastResult.unreachable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, locations, unreachable);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFastResult {\n");
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

