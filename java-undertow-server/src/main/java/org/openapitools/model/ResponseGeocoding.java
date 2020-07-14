package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseGeocodingGeoJsonFeature;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2020-07-14T11:27:18.263Z[Etc/UTC]")
public class ResponseGeocoding   {
  
  private String type;
  private List<ResponseGeocodingGeoJsonFeature> features = new ArrayList<ResponseGeocodingGeoJsonFeature>();

  /**
   **/
  public ResponseGeocoding type(String type) {
    this.type = type;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  public ResponseGeocoding features(List<ResponseGeocodingGeoJsonFeature> features) {
    this.features = features;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("features")
  public List<ResponseGeocodingGeoJsonFeature> getFeatures() {
    return features;
  }
  public void setFeatures(List<ResponseGeocodingGeoJsonFeature> features) {
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
    ResponseGeocoding responseGeocoding = (ResponseGeocoding) o;
    return Objects.equals(type, responseGeocoding.type) &&
        Objects.equals(features, responseGeocoding.features);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, features);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocoding {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

