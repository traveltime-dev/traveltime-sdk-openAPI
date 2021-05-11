package org.openapitools.model;

import org.openapitools.model.Coords;
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


public class RequestLocation  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private Coords coords;
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
  public RequestLocation id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get coords
  * @return coords
  */
  @JsonProperty("coords")
  @NotNull
  public Coords getCoords() {
    return coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public void setCoords(Coords coords) {
    this.coords = coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public RequestLocation coords(Coords coords) {
    this.coords = coords;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
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

