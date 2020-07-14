package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterPostcodeSector;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeFilterPostcodeSectorsResult   {
  
  private String searchId;
  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectorsResult () {

  }

  public ResponseTimeFilterPostcodeSectorsResult (String searchId, List<ResponseTimeFilterPostcodeSector> sectors) {
    this.searchId = searchId;
    this.sectors = sectors;
  }

    
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

    
  @JsonProperty("sectors")
  public List<ResponseTimeFilterPostcodeSector> getSectors() {
    return sectors;
  }
  public void setSectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeSectorsResult responseTimeFilterPostcodeSectorsResult = (ResponseTimeFilterPostcodeSectorsResult) o;
    return Objects.equals(searchId, responseTimeFilterPostcodeSectorsResult.searchId) &&
        Objects.equals(sectors, responseTimeFilterPostcodeSectorsResult.sectors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, sectors);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
