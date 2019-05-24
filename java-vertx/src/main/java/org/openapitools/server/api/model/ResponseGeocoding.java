package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseGeocodingGeoJsonFeature;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseGeocoding   {
  
  private String type;
  private List<ResponseGeocodingGeoJsonFeature> features = new ArrayList<>();

  public ResponseGeocoding () {

  }

  public ResponseGeocoding (String type, List<ResponseGeocodingGeoJsonFeature> features) {
    this.type = type;
    this.features = features;
  }

    
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

    
  @JsonProperty("features")
  public List<ResponseGeocodingGeoJsonFeature> getFeatures() {
    return features;
  }
  public void setFeatures(List<ResponseGeocodingGeoJsonFeature> features) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
