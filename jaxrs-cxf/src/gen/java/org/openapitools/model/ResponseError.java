package org.openapitools.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseError  {
  
  @ApiModelProperty(value = "")
  private Integer httpStatus;

  @ApiModelProperty(value = "")
  private Integer errorCode;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String documentationLink;

  @ApiModelProperty(value = "")
  @Valid
  private Map<String, List<String>> additionalInfo = null;
 /**
   * Get httpStatus
   * @return httpStatus
  **/
  @JsonProperty("http_status")
  public Integer getHttpStatus() {
    return httpStatus;
  }

  public void setHttpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
  }

  public ResponseError httpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
    return this;
  }

 /**
   * Get errorCode
   * @return errorCode
  **/
  @JsonProperty("error_code")
  public Integer getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }

  public ResponseError errorCode(Integer errorCode) {
    this.errorCode = errorCode;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public ResponseError description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get documentationLink
   * @return documentationLink
  **/
  @JsonProperty("documentation_link")
  public String getDocumentationLink() {
    return documentationLink;
  }

  public void setDocumentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
  }

  public ResponseError documentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
    return this;
  }

 /**
   * Get additionalInfo
   * @return additionalInfo
  **/
  @JsonProperty("additional_info")
  public Map<String, List<String>> getAdditionalInfo() {
    return additionalInfo;
  }

  public void setAdditionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
  }

  public ResponseError additionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
    return this;
  }

  public ResponseError putAdditionalInfoItem(String key, List<String> additionalInfoItem) {
    this.additionalInfo.put(key, additionalInfoItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseError {\n");
    
    sb.append("    httpStatus: ").append(toIndentedString(httpStatus)).append("\n");
    sb.append("    errorCode: ").append(toIndentedString(errorCode)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    documentationLink: ").append(toIndentedString(documentationLink)).append("\n");
    sb.append("    additionalInfo: ").append(toIndentedString(additionalInfo)).append("\n");
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

