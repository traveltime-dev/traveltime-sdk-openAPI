package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTimeMapProperties;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class ResponseTimeMapWktResult   {
  
  private String searchId;

  private String shape;

  private ResponseTimeMapProperties properties;


  /**
   **/
  public ResponseTimeMapWktResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("search_id")
  @NotNull
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }


  /**
   **/
  public ResponseTimeMapWktResult shape(String shape) {
    this.shape = shape;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("shape")
  @NotNull
  public String getShape() {
    return shape;
  }
  public void setShape(String shape) {
    this.shape = shape;
  }


  /**
   **/
  public ResponseTimeMapWktResult properties(ResponseTimeMapProperties properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public ResponseTimeMapProperties getProperties() {
    return properties;
  }
  public void setProperties(ResponseTimeMapProperties properties) {
    this.properties = properties;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapWktResult responseTimeMapWktResult = (ResponseTimeMapWktResult) o;
    return Objects.equals(searchId, responseTimeMapWktResult.searchId) &&
        Objects.equals(shape, responseTimeMapWktResult.shape) &&
        Objects.equals(properties, responseTimeMapWktResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shape, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapWktResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    shape: ").append(toIndentedString(shape)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

