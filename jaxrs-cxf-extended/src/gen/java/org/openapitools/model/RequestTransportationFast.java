package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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


public class RequestTransportationFast  {
  
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("public_transport") @JsonProperty("public_transport") PUBLIC_TRANSPORT(String.valueOf("public_transport")), 
    @XmlEnumValue("driving") @JsonProperty("driving") DRIVING(String.valueOf("driving")), 
    @XmlEnumValue("driving+public_transport") @JsonProperty("driving+public_transport") DRIVING_PUBLIC_TRANSPORT(String.valueOf("driving+public_transport"));

    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static TypeEnum fromValue(String value) {
        for (TypeEnum b : TypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(required = true, value = "")
  private TypeEnum type;
 /**
  * Get type
  * @return type
  */
  @JsonProperty("type")
  @NotNull
  public String getType() {
    return type == null ? null : type.value();
  }

  /**
   * Sets the <code>type</code> property.
   */
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public RequestTransportationFast type(TypeEnum type) {
    this.type = type;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTransportationFast {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

