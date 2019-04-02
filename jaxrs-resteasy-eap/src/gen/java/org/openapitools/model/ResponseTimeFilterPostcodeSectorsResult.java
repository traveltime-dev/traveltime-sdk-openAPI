package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeSector;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-04-02T12:38:03.342Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeSectorsResult   {
  

  private String searchId;

  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<ResponseTimeFilterPostcodeSector>();

  /**
   **/
  
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
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("sectors")
  @NotNull
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

