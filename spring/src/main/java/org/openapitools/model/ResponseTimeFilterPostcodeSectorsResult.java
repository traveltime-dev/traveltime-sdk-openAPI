package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeSector;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseTimeFilterPostcodeSectorsResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-11T08:39:43.646Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeSectorsResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("sectors")
  @Valid
  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectorsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

  /**
   * Get searchId
   * @return searchId
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterPostcodeSectorsResult sectors(List<ResponseTimeFilterPostcodeSector> sectors) {
    this.sectors = sectors;
    return this;
  }

  public ResponseTimeFilterPostcodeSectorsResult addSectorsItem(ResponseTimeFilterPostcodeSector sectorsItem) {
    this.sectors.add(sectorsItem);
    return this;
  }

  /**
   * Get sectors
   * @return sectors
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
    return Objects.equals(this.searchId, responseTimeFilterPostcodeSectorsResult.searchId) &&
        Objects.equals(this.sectors, responseTimeFilterPostcodeSectorsResult.sectors);
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

