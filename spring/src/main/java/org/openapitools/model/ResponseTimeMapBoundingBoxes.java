package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeMapBoundingBoxesResult;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseTimeMapBoundingBoxes
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2020-07-14T11:29:24.850Z[Etc/UTC]")
public class ResponseTimeMapBoundingBoxes   {
  @JsonProperty("results")
  @Valid
  private List<ResponseTimeMapBoundingBoxesResult> results = new ArrayList<>();

  public ResponseTimeMapBoundingBoxes results(List<ResponseTimeMapBoundingBoxesResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeMapBoundingBoxes addResultsItem(ResponseTimeMapBoundingBoxesResult resultsItem) {
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

  public List<ResponseTimeMapBoundingBoxesResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeMapBoundingBoxesResult> results) {
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
    ResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes = (ResponseTimeMapBoundingBoxes) o;
    return Objects.equals(this.results, responseTimeMapBoundingBoxes.results);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

