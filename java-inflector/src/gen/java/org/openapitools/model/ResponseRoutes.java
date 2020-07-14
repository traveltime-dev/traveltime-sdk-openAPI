package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseRoutesResult;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2020-07-14T11:27:08.641Z[Etc/UTC]")
public class ResponseRoutes   {
  @JsonProperty("results")
  private List<ResponseRoutesResult> results = new ArrayList<ResponseRoutesResult>();

  /**
   **/
  public ResponseRoutes results(List<ResponseRoutesResult> results) {
    this.results = results;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("results")
  public List<ResponseRoutesResult> getResults() {
    return results;
  }
  public void setResults(List<ResponseRoutesResult> results) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

