package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseFareTicket   {
  

public enum TypeEnum {

    SINGLE(String.valueOf("single")), WEEK(String.valueOf("week")), MONTH(String.valueOf("month")), YEAR(String.valueOf("year"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static TypeEnum fromValue(String value) {
        for (TypeEnum b : TypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  private @Valid TypeEnum type;
  private @Valid Double price;
  private @Valid String currency;

  /**
   **/
  public ResponseFareTicket type(TypeEnum type) {
    this.type = type;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("type")
  @NotNull
  public TypeEnum getType() {
    return type;
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

/**
   **/
  public ResponseFareTicket price(Double price) {
    this.price = price;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("price")
  @NotNull
  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

/**
   **/
  public ResponseFareTicket currency(String currency) {
    this.currency = currency;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("currency")
  @NotNull
  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseFareTicket responseFareTicket = (ResponseFareTicket) o;
    return Objects.equals(this.type, responseFareTicket.type) &&
        Objects.equals(this.price, responseFareTicket.price) &&
        Objects.equals(this.currency, responseFareTicket.currency);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, price, currency);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

