package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectorsResult;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseTimeFilterPostcodeSectors   {
  
  private List<ResponseTimeFilterPostcodeSectorsResult> results = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectors () {

  }

  public ResponseTimeFilterPostcodeSectors (List<ResponseTimeFilterPostcodeSectorsResult> results) {
    this.results = results;
  }

    
  @JsonProperty("results")
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
    return Objects.equals(results, responseTimeFilterPostcodeSectors.results);
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
