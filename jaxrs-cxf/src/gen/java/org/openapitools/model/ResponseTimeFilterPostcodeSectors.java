package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodeSectorsResult;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseTimeFilterPostcodeSectors  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseTimeFilterPostcodeSectorsResult> results = new ArrayList<ResponseTimeFilterPostcodeSectorsResult>();
 /**
   * Get results
   * @return results
  **/
  @JsonProperty("results")
  @NotNull
  public List<ResponseTimeFilterPostcodeSectorsResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterPostcodeSectorsResult> results) {
    this.results = results;
  }

  public ResponseTimeFilterPostcodeSectors results(List<ResponseTimeFilterPostcodeSectorsResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterPostcodeSectors addResultsItem(ResponseTimeFilterPostcodeSectorsResult resultsItem) {
    this.results.add(resultsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

