package apimodels;

import apimodels.ResponseMapInfoFeaturesPublicTransport;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseMapInfoFeatures
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseMapInfoFeatures   {
  @JsonProperty("public_transport")
  @Valid

  private ResponseMapInfoFeaturesPublicTransport publicTransport;

  @JsonProperty("fares")
  @NotNull

  private Boolean fares;

  @JsonProperty("postcodes")
  @NotNull

  private Boolean postcodes;

  public ResponseMapInfoFeatures publicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
    return this;
  }

   /**
   * Get publicTransport
   * @return publicTransport
  **/
  public ResponseMapInfoFeaturesPublicTransport getPublicTransport() {
    return publicTransport;
  }

  public void setPublicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
  }

  public ResponseMapInfoFeatures fares(Boolean fares) {
    this.fares = fares;
    return this;
  }

   /**
   * Get fares
   * @return fares
  **/
  public Boolean getFares() {
    return fares;
  }

  public void setFares(Boolean fares) {
    this.fares = fares;
  }

  public ResponseMapInfoFeatures postcodes(Boolean postcodes) {
    this.postcodes = postcodes;
    return this;
  }

   /**
   * Get postcodes
   * @return postcodes
  **/
  public Boolean getPostcodes() {
    return postcodes;
  }

  public void setPostcodes(Boolean postcodes) {
    this.postcodes = postcodes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeatures responseMapInfoFeatures = (ResponseMapInfoFeatures) o;
    return Objects.equals(publicTransport, responseMapInfoFeatures.publicTransport) &&
        Objects.equals(fares, responseMapInfoFeatures.fares) &&
        Objects.equals(postcodes, responseMapInfoFeatures.postcodes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(publicTransport, fares, postcodes);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoFeatures {\n");
    
    sb.append("    publicTransport: ").append(toIndentedString(publicTransport)).append("\n");
    sb.append("    fares: ").append(toIndentedString(fares)).append("\n");
    sb.append("    postcodes: ").append(toIndentedString(postcodes)).append("\n");
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

