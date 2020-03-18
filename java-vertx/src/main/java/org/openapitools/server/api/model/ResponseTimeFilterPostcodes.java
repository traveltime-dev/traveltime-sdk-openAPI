package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodesResult;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeFilterPostcodes   {
  
  private List<ResponseTimeFilterPostcodesResult> results = new ArrayList<>();

  public ResponseTimeFilterPostcodes () {

  }

  public ResponseTimeFilterPostcodes (List<ResponseTimeFilterPostcodesResult> results) {
    this.results = results;
  }

    
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
