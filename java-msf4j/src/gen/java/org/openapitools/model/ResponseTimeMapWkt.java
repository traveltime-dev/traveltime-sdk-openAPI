package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeMapWktResult;

/**
 * ResponseTimeMapWkt
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-11T08:37:55.137Z[Etc/UTC]")
public class ResponseTimeMapWkt   {
  @JsonProperty("results")
  private List<ResponseTimeMapWktResult> results = new ArrayList<ResponseTimeMapWktResult>();

  public ResponseTimeMapWkt results(List<ResponseTimeMapWktResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeMapWkt addResultsItem(ResponseTimeMapWktResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeMapWktResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeMapWktResult> results) {
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
    ResponseTimeMapWkt responseTimeMapWkt = (ResponseTimeMapWkt) o;
    return Objects.equals(this.results, responseTimeMapWkt.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapWkt {\n");
    
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

