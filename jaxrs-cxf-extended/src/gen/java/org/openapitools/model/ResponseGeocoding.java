package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseGeocodingGeoJsonFeature;
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


public class ResponseGeocoding  {
  
  @ApiModelProperty(required = true, value = "")
  private String type;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseGeocodingGeoJsonFeature> features = new ArrayList<ResponseGeocodingGeoJsonFeature>();
 /**
  * Get type
  * @return type
  */
  @JsonProperty("type")
  @NotNull
  public String getType() {
    return type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public void setType(String type) {
    this.type = type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public ResponseGeocoding type(String type) {
    this.type = type;
    return this;
  }

 /**
  * Get features
  * @return features
  */
  @JsonProperty("features")
  @NotNull
  public List<ResponseGeocodingGeoJsonFeature> getFeatures() {
    return features;
  }

  /**
   * Sets the <code>features</code> property.
   */
  public void setFeatures(List<ResponseGeocodingGeoJsonFeature> features) {
    this.features = features;
  }

  /**
   * Sets the <code>features</code> property.
   */
  public ResponseGeocoding features(List<ResponseGeocodingGeoJsonFeature> features) {
    this.features = features;
    return this;
  }

  /**
   * Adds a new item to the <code>features</code> list.
   */
  public ResponseGeocoding addFeaturesItem(ResponseGeocodingGeoJsonFeature featuresItem) {
    this.features.add(featuresItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

