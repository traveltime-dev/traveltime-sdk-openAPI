package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseMapInfoFeaturesPublicTransport;

/**
 * ResponseMapInfoFeatures
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-02T12:37:41.410Z[Etc/UTC]")
public class ResponseMapInfoFeatures   {
  @JsonProperty("public_transport")
  private ResponseMapInfoFeaturesPublicTransport publicTransport = null;

  @JsonProperty("fares")
  private Boolean fares;

  @JsonProperty("postcodes")
  private Boolean postcodes;

  public ResponseMapInfoFeatures publicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
    return this;
  }

   /**
   * Get publicTransport
   * @return publicTransport
  **/
  @ApiModelProperty(value = "")
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
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
  public Boolean getPostcodes() {
    return postcodes;
  }

  public void setPostcodes(Boolean postcodes) {
    this.postcodes = postcodes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeatures responseMapInfoFeatures = (ResponseMapInfoFeatures) o;
    return Objects.equals(this.publicTransport, responseMapInfoFeatures.publicTransport) &&
        Objects.equals(this.fares, responseMapInfoFeatures.fares) &&
        Objects.equals(this.postcodes, responseMapInfoFeatures.postcodes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(publicTransport, fares, postcodes);
  }

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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

