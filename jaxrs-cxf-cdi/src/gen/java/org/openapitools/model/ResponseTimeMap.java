package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeMapResult;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class ResponseTimeMap   {
  
  private List<ResponseTimeMapResult> results = new ArrayList<ResponseTimeMapResult>();


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

  public ResponseTimeMap addResultsItem(ResponseTimeMapResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }



  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

