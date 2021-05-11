package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeDistrictsResult;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseTimeFilterPostcodeDistricts
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-11T08:39:43.646Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeDistricts   {
  @JsonProperty("results")
  @Valid
  private List<ResponseTimeFilterPostcodeDistrictsResult> results = new ArrayList<>();

  public ResponseTimeFilterPostcodeDistricts results(List<ResponseTimeFilterPostcodeDistrictsResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterPostcodeDistricts addResultsItem(ResponseTimeFilterPostcodeDistrictsResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

  /**
   * Get results
   * @return results
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

  public List<ResponseTimeFilterPostcodeDistrictsResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterPostcodeDistrictsResult> results) {
    this.results = results;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeDistricts responseTimeFilterPostcodeDistricts = (ResponseTimeFilterPostcodeDistricts) o;
    return Objects.equals(this.results, responseTimeFilterPostcodeDistricts.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeDistricts {\n");
    
    sb.append("    results: ").append(toIndentedString(results)).append("\n");
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

