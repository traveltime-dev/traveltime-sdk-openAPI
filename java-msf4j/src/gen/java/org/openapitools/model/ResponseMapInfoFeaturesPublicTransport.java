package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Date;

/**
 * ResponseMapInfoFeaturesPublicTransport
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-02T12:37:41.410Z[Etc/UTC]")
public class ResponseMapInfoFeaturesPublicTransport   {
  @JsonProperty("date_start")
  private Date dateStart;

  @JsonProperty("date_end")
  private Date dateEnd;

  public ResponseMapInfoFeaturesPublicTransport dateStart(Date dateStart) {
    this.dateStart = dateStart;
    return this;
  }

   /**
   * Get dateStart
   * @return dateStart
  **/
  @ApiModelProperty(required = true, value = "")
  public Date getDateStart() {
    return dateStart;
  }

  public void setDateStart(Date dateStart) {
    this.dateStart = dateStart;
  }

  public ResponseMapInfoFeaturesPublicTransport dateEnd(Date dateEnd) {
    this.dateEnd = dateEnd;
    return this;
  }

   /**
   * Get dateEnd
   * @return dateEnd
  **/
  @ApiModelProperty(required = true, value = "")
  public Date getDateEnd() {
    return dateEnd;
  }

  public void setDateEnd(Date dateEnd) {
    this.dateEnd = dateEnd;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeaturesPublicTransport responseMapInfoFeaturesPublicTransport = (ResponseMapInfoFeaturesPublicTransport) o;
    return Objects.equals(this.dateStart, responseMapInfoFeaturesPublicTransport.dateStart) &&
        Objects.equals(this.dateEnd, responseMapInfoFeaturesPublicTransport.dateEnd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dateStart, dateEnd);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoFeaturesPublicTransport {\n");
    
    sb.append("    dateStart: ").append(toIndentedString(dateStart)).append("\n");
    sb.append("    dateEnd: ").append(toIndentedString(dateEnd)).append("\n");
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

