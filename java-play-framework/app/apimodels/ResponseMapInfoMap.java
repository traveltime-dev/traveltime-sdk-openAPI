package apimodels;

import apimodels.ResponseMapInfoFeatures;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseMapInfoMap
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
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
  @NotNull
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
  @NotNull
@Valid
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
    return Objects.equals(name, responseMapInfoMap.name) &&
        Objects.equals(features, responseMapInfoMap.features);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, features);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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

