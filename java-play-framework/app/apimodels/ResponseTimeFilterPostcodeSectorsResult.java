package apimodels;

import apimodels.ResponseTimeFilterPostcodeSector;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeSectorsResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeSectorsResult   {
  @JsonProperty("search_id")
  @NotNull

  private String searchId;

  @JsonProperty("sectors")
  @NotNull
@Valid

  private List<ResponseTimeFilterPostcodeSector> sectors = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectorsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
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
    sectors.add(sectorsItem);
    return this;
  }

   /**
   * Get sectors
   * @return sectors
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

