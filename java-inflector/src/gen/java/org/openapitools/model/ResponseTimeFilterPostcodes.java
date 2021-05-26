package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodesResult;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class ResponseTimeFilterPostcodes   {
  @JsonProperty("results")
  private List<ResponseTimeFilterPostcodesResult> results = new ArrayList<ResponseTimeFilterPostcodesResult>();

  /**
   **/
  public ResponseTimeFilterPostcodes results(List<ResponseTimeFilterPostcodesResult> results) {
    this.results = results;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("results")
  public List<ResponseTimeFilterPostcodesResult> getResults() {
    return results;
  }
  public void setResults(List<ResponseTimeFilterPostcodesResult> results) {
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
    ResponseTimeFilterPostcodes responseTimeFilterPostcodes = (ResponseTimeFilterPostcodes) o;
    return Objects.equals(results, responseTimeFilterPostcodes.results);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

