package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseRoutesResult;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseRoutes   {
  
  private List<ResponseRoutesResult> results = new ArrayList<>();

  public ResponseRoutes () {

  }

  public ResponseRoutes (List<ResponseRoutesResult> results) {
    this.results = results;
  }

    
  @JsonProperty("results")
  public List<ResponseRoutesResult> getResults() {
    return results;
  }
  public void setResults(List<ResponseRoutesResult> results) {
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
    ResponseRoutes responseRoutes = (ResponseRoutes) o;
    return Objects.equals(results, responseRoutes.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutes {\n");
    
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
