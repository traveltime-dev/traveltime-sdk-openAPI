/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import org.openapitools.client.model.ResponseGeocodingGeometry;
import org.openapitools.client.model.ResponseGeocodingProperties;

/**
 * ResponseGeocodingGeoJsonFeature
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2019-04-02T12:37:33.924Z[Etc/UTC]")
public class ResponseGeocodingGeoJsonFeature {
  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_GEOMETRY = "geometry";
  @SerializedName(SERIALIZED_NAME_GEOMETRY)
  private ResponseGeocodingGeometry geometry = null;

  public static final String SERIALIZED_NAME_PROPERTIES = "properties";
  @SerializedName(SERIALIZED_NAME_PROPERTIES)
  private ResponseGeocodingProperties properties = null;

  public ResponseGeocodingGeoJsonFeature type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseGeocodingProperties properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature = (ResponseGeocodingGeoJsonFeature) o;
    return Objects.equals(this.type, responseGeocodingGeoJsonFeature.type) &&
        Objects.equals(this.geometry, responseGeocodingGeoJsonFeature.geometry) &&
        Objects.equals(this.properties, responseGeocodingGeoJsonFeature.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, geometry, properties);
  }


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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
