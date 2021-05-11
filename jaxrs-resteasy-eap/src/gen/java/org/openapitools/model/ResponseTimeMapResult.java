package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseShape;
import org.openapitools.model.ResponseTimeMapProperties;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-11T08:38:18.755Z[Etc/UTC]")
public class ResponseTimeMapResult   {
  

  private String searchId;

  private List<ResponseShape> shapes = new ArrayList<ResponseShape>();

  private ResponseTimeMapProperties properties;

  /**
   **/
  
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
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("shapes")
  @NotNull
  public List<ResponseShape> getShapes() {
    return shapes;
  }
  public void setShapes(List<ResponseShape> shapes) {
    this.shapes = shapes;
  }

  /**
   **/
  
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
    ResponseTimeMapResult responseTimeMapResult = (ResponseTimeMapResult) o;
    return Objects.equals(searchId, responseTimeMapResult.searchId) &&
        Objects.equals(shapes, responseTimeMapResult.shapes) &&
        Objects.equals(properties, responseTimeMapResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shapes, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    shapes: ").append(toIndentedString(shapes)).append("\n");
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

