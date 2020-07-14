package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseMapInfoFeatures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseMapInfoMap
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-07-14T11:27:13.425Z[Etc/UTC]")
public class ResponseMapInfoMap   {
  @JsonProperty("name")
  private String name;

  @JsonProperty("features")
  private ResponseMapInfoFeatures features;

  public ResponseMapInfoMap name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public ResponseMapInfoMap features(ResponseMapInfoFeatures features) {
    this.features = features;
    return this;
  }

   /**
   * Get features
   * @return features
  **/
  @ApiModelProperty(required = true, value = "")
  public ResponseMapInfoFeatures getFeatures() {
    return features;
  }

  public void setFeatures(ResponseMapInfoFeatures features) {
    this.features = features;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

