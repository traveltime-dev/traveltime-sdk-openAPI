package apimodels;

import apimodels.ResponseTimeFilterPostcodeDistrict;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeDistrictsResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-02T12:37:46.315Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeDistrictsResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("districts")
  private List<ResponseTimeFilterPostcodeDistrict> districts = new ArrayList<>();

  public ResponseTimeFilterPostcodeDistrictsResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeFilterPostcodeDistrictsResult districts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
    return this;
  }

  public ResponseTimeFilterPostcodeDistrictsResult addDistrictsItem(ResponseTimeFilterPostcodeDistrict districtsItem) {
    districts.add(districtsItem);
    return this;
  }

   /**
   * Get districts
   * @return districts
  **/
  @NotNull
@Valid
  public List<ResponseTimeFilterPostcodeDistrict> getDistricts() {
    return districts;
  }

  public void setDistricts(List<ResponseTimeFilterPostcodeDistrict> districts) {
    this.districts = districts;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeDistrictsResult responseTimeFilterPostcodeDistrictsResult = (ResponseTimeFilterPostcodeDistrictsResult) o;
    return Objects.equals(searchId, responseTimeFilterPostcodeDistrictsResult.searchId) &&
        Objects.equals(districts, responseTimeFilterPostcodeDistrictsResult.districts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, districts);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

