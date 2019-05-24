package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeMapBoundingBoxesResult;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-05-24T09:07:09.676Z[Etc/UTC]")
public class ResponseTimeMapBoundingBoxes   {
  

  private List<ResponseTimeMapBoundingBoxesResult> results = new ArrayList<ResponseTimeMapBoundingBoxesResult>();

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("results")
  @NotNull
  public List<ResponseTimeMapBoundingBoxesResult> getResults() {
    return results;
  }
  public void setResults(List<ResponseTimeMapBoundingBoxesResult> results) {
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
    ResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes = (ResponseTimeMapBoundingBoxes) o;
    return Objects.equals(results, responseTimeMapBoundingBoxes.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapBoundingBoxes {\n");
    
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

