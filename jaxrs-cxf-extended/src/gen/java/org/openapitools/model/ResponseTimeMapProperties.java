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


public class ResponseTimeMapProperties  {
  
  @ApiModelProperty(value = "")
  private Boolean isOnlyWalking;
 /**
  * Get isOnlyWalking
  * @return isOnlyWalking
  */
  @JsonProperty("is_only_walking")
  public Boolean getIsOnlyWalking() {
    return isOnlyWalking;
  }

  /**
   * Sets the <code>isOnlyWalking</code> property.
   */
  public void setIsOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
  }

  /**
   * Sets the <code>isOnlyWalking</code> property.
   */
  public ResponseTimeMapProperties isOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapProperties {\n");
    
    sb.append("    isOnlyWalking: ").append(toIndentedString(isOnlyWalking)).append("\n");
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

