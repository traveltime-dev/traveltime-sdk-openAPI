package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseMapInfoFeaturesPublicTransport;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-07-14T11:27:37.641Z[Etc/UTC]")
public class ResponseMapInfoFeatures   {
  

  private ResponseMapInfoFeaturesPublicTransport publicTransport;

  private Boolean fares;

  private Boolean postcodes;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("public_transport")
  public ResponseMapInfoFeaturesPublicTransport getPublicTransport() {
    return publicTransport;
  }
  public void setPublicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("fares")
  @NotNull
  public Boolean getFares() {
    return fares;
  }
  public void setFares(Boolean fares) {
    this.fares = fares;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("postcodes")
  @NotNull
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

