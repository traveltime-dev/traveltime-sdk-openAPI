package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcodeSectorsResult;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseTimeFilterPostcodeSectors
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-11T08:37:57.444Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeSectors   {
  @JsonProperty("results")
  
  private List<ResponseTimeFilterPostcodeSectorsResult> results = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectors results(List<ResponseTimeFilterPostcodeSectorsResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterPostcodeSectors addResultsItem(ResponseTimeFilterPostcodeSectorsResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterPostcodeSectorsResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterPostcodeSectorsResult> results) {
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
    ResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors = (ResponseTimeFilterPostcodeSectors) o;
    return Objects.equals(this.results, responseTimeFilterPostcodeSectors.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSectors {\n");
    
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

