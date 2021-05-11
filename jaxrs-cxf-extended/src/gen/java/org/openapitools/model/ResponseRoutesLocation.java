package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseRoutesProperties;
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


public class ResponseRoutesLocation  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseRoutesProperties> properties = new ArrayList<ResponseRoutesProperties>();
 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public ResponseRoutesLocation id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  @NotNull
  public List<ResponseRoutesProperties> getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(List<ResponseRoutesProperties> properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public ResponseRoutesLocation properties(List<ResponseRoutesProperties> properties) {
    this.properties = properties;
    return this;
  }

  /**
   * Adds a new item to the <code>properties</code> list.
   */
  public ResponseRoutesLocation addPropertiesItem(ResponseRoutesProperties propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

