package apimodels;

import apimodels.ResponseGeocodingGeometry;
import apimodels.ResponseGeocodingProperties;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseGeocodingGeoJsonFeature
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseGeocodingGeoJsonFeature   {
  @JsonProperty("type")
  @NotNull

  private String type;

  @JsonProperty("geometry")
  @NotNull
@Valid

  private ResponseGeocodingGeometry geometry;

  @JsonProperty("properties")
  @NotNull
@Valid

  private ResponseGeocodingProperties properties;

  public ResponseGeocodingGeoJsonFeature type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ResponseGeocodingGeoJsonFeature geometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
    return this;
  }

   /**
   * Get geometry
   * @return geometry
  **/
  public ResponseGeocodingGeometry getGeometry() {
    return geometry;
  }

  public void setGeometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
  }

  public ResponseGeocodingGeoJsonFeature properties(ResponseGeocodingProperties properties) {
    this.properties = properties;
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseGeocodingProperties properties) {
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
    ResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature = (ResponseGeocodingGeoJsonFeature) o;
    return Objects.equals(type, responseGeocodingGeoJsonFeature.type) &&
        Objects.equals(geometry, responseGeocodingGeoJsonFeature.geometry) &&
        Objects.equals(properties, responseGeocodingGeoJsonFeature.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, geometry, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocodingGeoJsonFeature {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    geometry: ").append(toIndentedString(geometry)).append("\n");
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

