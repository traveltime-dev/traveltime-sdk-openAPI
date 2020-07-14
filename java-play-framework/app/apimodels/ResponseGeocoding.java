package apimodels;

import apimodels.ResponseGeocodingGeoJsonFeature;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseGeocoding
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-07-14T11:27:15.847Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseGeocoding   {
  @JsonProperty("type")
  private String type;

  @JsonProperty("features")
  private List<ResponseGeocodingGeoJsonFeature> features = new ArrayList<>();

  public ResponseGeocoding type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @NotNull
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ResponseGeocoding features(List<ResponseGeocodingGeoJsonFeature> features) {
    this.features = features;
    return this;
  }

  public ResponseGeocoding addFeaturesItem(ResponseGeocodingGeoJsonFeature featuresItem) {
    features.add(featuresItem);
    return this;
  }

   /**
   * Get features
   * @return features
  **/
  @NotNull
@Valid
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

