package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeMapResult;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



public class ResponseTimeMap   {
  
  private @Valid List<ResponseTimeMapResult> results = new ArrayList<ResponseTimeMapResult>();

  /**
   **/
  public ResponseTimeMap results(List<ResponseTimeMapResult> results) {
    this.results = results;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("results")
  @NotNull
  public List<ResponseTimeMapResult> getResults() {
    return results;
  }
  public void setResults(List<ResponseTimeMapResult> results) {
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
    ResponseTimeMap responseTimeMap = (ResponseTimeMap) o;
    return Objects.equals(results, responseTimeMap.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMap {\n");
    
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

