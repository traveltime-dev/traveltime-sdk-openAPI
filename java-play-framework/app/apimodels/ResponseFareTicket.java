package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseFareTicket
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseFareTicket   {
  /**
   * Gets or Sets type
   */
  public enum TypeEnum {
    SINGLE("single"),
    
    WEEK("week"),
    
    MONTH("month"),
    
    YEAR("year");

    private final String value;

    TypeEnum(String value) {
      this.value = value;
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

  @JsonProperty("type")
  @NotNull

  private TypeEnum type;

  @JsonProperty("price")
  @NotNull

  private Double price;

  @JsonProperty("currency")
  @NotNull

  private String currency;

  public ResponseFareTicket type(TypeEnum type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  public TypeEnum getType() {
    return type;
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public ResponseFareTicket price(Double price) {
    this.price = price;
    return this;
  }

   /**
   * Get price
   * @return price
  **/
  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

  public ResponseFareTicket currency(String currency) {
    this.currency = currency;
    return this;
  }

   /**
   * Get currency
   * @return currency
  **/
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
    return Objects.equals(type, responseFareTicket.type) &&
        Objects.equals(price, responseFareTicket.price) &&
        Objects.equals(currency, responseFareTicket.currency);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, price, currency);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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

