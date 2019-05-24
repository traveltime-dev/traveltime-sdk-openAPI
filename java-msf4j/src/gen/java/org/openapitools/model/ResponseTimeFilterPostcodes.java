package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodesResult;

/**
 * ResponseTimeFilterPostcodes
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-05-24T09:06:47.339Z[Etc/UTC]")
public class ResponseTimeFilterPostcodes   {
  @JsonProperty("results")
  private List<ResponseTimeFilterPostcodesResult> results = new ArrayList<ResponseTimeFilterPostcodesResult>();

  public ResponseTimeFilterPostcodes results(List<ResponseTimeFilterPostcodesResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterPostcodes addResultsItem(ResponseTimeFilterPostcodesResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterPostcodesResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterPostcodesResult> results) {
    this.results = results;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodes responseTimeFilterPostcodes = (ResponseTimeFilterPostcodes) o;
    return Objects.equals(this.results, responseTimeFilterPostcodes.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodes {\n");
    
    sb.append("    results: ").append(toIndentedString(results)).append("\n");
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

