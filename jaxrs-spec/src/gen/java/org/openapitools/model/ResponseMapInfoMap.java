package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseMapInfoFeatures;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class ResponseMapInfoMap   {
  
  private @Valid String name;
  private @Valid ResponseMapInfoFeatures features;

  /**
   **/
  public ResponseMapInfoMap name(String name) {
    this.name = name;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("name")
  @NotNull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

/**
   **/
  public ResponseMapInfoMap features(ResponseMapInfoFeatures features) {
    this.features = features;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("features")
  @NotNull
  public ResponseMapInfoFeatures getFeatures() {
    return features;
  }

  public void setFeatures(ResponseMapInfoFeatures features) {
    this.features = features;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoMap responseMapInfoMap = (ResponseMapInfoMap) o;
    return Objects.equals(this.name, responseMapInfoMap.name) &&
        Objects.equals(this.features, responseMapInfoMap.features);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, features);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoMap {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    features: ").append(toIndentedString(features)).append("\n");
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

