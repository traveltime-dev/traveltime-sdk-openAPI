package org.openapitools.model;

import org.openapitools.model.ResponseMapInfoFeaturesPublicTransport;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseMapInfoFeatures  {
  
  @ApiModelProperty(value = "")
  @Valid
  private ResponseMapInfoFeaturesPublicTransport publicTransport;

  @ApiModelProperty(required = true, value = "")
  private Boolean fares;

  @ApiModelProperty(required = true, value = "")
  private Boolean postcodes;
 /**
  * Get publicTransport
  * @return publicTransport
  */
  @JsonProperty("public_transport")
  public ResponseMapInfoFeaturesPublicTransport getPublicTransport() {
    return publicTransport;
  }

  /**
   * Sets the <code>publicTransport</code> property.
   */
  public void setPublicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
  }

  /**
   * Sets the <code>publicTransport</code> property.
   */
  public ResponseMapInfoFeatures publicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
    return this;
  }

 /**
  * Get fares
  * @return fares
  */
  @JsonProperty("fares")
  @NotNull
  public Boolean getFares() {
    return fares;
  }

  /**
   * Sets the <code>fares</code> property.
   */
  public void setFares(Boolean fares) {
    this.fares = fares;
  }

  /**
   * Sets the <code>fares</code> property.
   */
  public ResponseMapInfoFeatures fares(Boolean fares) {
    this.fares = fares;
    return this;
  }

 /**
  * Get postcodes
  * @return postcodes
  */
  @JsonProperty("postcodes")
  @NotNull
  public Boolean getPostcodes() {
    return postcodes;
  }

  /**
   * Sets the <code>postcodes</code> property.
   */
  public void setPostcodes(Boolean postcodes) {
    this.postcodes = postcodes;
  }

  /**
   * Sets the <code>postcodes</code> property.
   */
  public ResponseMapInfoFeatures postcodes(Boolean postcodes) {
    this.postcodes = postcodes;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

