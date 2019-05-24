package org.openapitools.model;

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

public class ResponseFareTicket  {
  
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("single") @JsonProperty("single") SINGLE(String.valueOf("single")), 
    @XmlEnumValue("week") @JsonProperty("week") WEEK(String.valueOf("week")), 
    @XmlEnumValue("month") @JsonProperty("month") MONTH(String.valueOf("month")), 
    @XmlEnumValue("year") @JsonProperty("year") YEAR(String.valueOf("year"));

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

  @ApiModelProperty(required = true, value = "")
  private Double price;

  @ApiModelProperty(required = true, value = "")
  private String currency;
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
  public ResponseFareTicket type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
  * Get price
  * @return price
  */
  @JsonProperty("price")
  @NotNull
  public Double getPrice() {
    return price;
  }

  /**
   * Sets the <code>price</code> property.
   */
  public void setPrice(Double price) {
    this.price = price;
  }

  /**
   * Sets the <code>price</code> property.
   */
  public ResponseFareTicket price(Double price) {
    this.price = price;
    return this;
  }

 /**
  * Get currency
  * @return currency
  */
  @JsonProperty("currency")
  @NotNull
  public String getCurrency() {
    return currency;
  }

  /**
   * Sets the <code>currency</code> property.
   */
  public void setCurrency(String currency) {
    this.currency = currency;
  }

  /**
   * Sets the <code>currency</code> property.
   */
  public ResponseFareTicket currency(String currency) {
    this.currency = currency;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseFareTicket {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

