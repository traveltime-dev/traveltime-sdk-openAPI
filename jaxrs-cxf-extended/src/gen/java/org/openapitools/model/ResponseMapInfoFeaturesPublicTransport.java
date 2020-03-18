package org.openapitools.model;

import java.util.Date;
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


public class ResponseMapInfoFeaturesPublicTransport  {
  
  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date dateStart;

  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date dateEnd;
 /**
  * Get dateStart
  * @return dateStart
  */
  @JsonProperty("date_start")
  @NotNull
  public Date getDateStart() {
    return dateStart;
  }

  /**
   * Sets the <code>dateStart</code> property.
   */
  public void setDateStart(Date dateStart) {
    this.dateStart = dateStart;
  }

  /**
   * Sets the <code>dateStart</code> property.
   */
  public ResponseMapInfoFeaturesPublicTransport dateStart(Date dateStart) {
    this.dateStart = dateStart;
    return this;
  }

 /**
  * Get dateEnd
  * @return dateEnd
  */
  @JsonProperty("date_end")
  @NotNull
  public Date getDateEnd() {
    return dateEnd;
  }

  /**
   * Sets the <code>dateEnd</code> property.
   */
  public void setDateEnd(Date dateEnd) {
    this.dateEnd = dateEnd;
  }

  /**
   * Sets the <code>dateEnd</code> property.
   */
  public ResponseMapInfoFeaturesPublicTransport dateEnd(Date dateEnd) {
    this.dateEnd = dateEnd;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

