/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import java.util.Map;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseError {
  
  @SerializedName("http_status")
  private Integer httpStatus = null;
  @SerializedName("error_code")
  private Integer errorCode = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("documentation_link")
  private String documentationLink = null;
  @SerializedName("additional_info")
  private Map<String, List<String>> additionalInfo = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getHttpStatus() {
    return httpStatus;
  }
  public void setHttpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getErrorCode() {
    return errorCode;
  }
  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDocumentationLink() {
    return documentationLink;
  }
  public void setDocumentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Map<String, List<String>> getAdditionalInfo() {
    return additionalInfo;
  }
  public void setAdditionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseError responseError = (ResponseError) o;
    return (this.httpStatus == null ? responseError.httpStatus == null : this.httpStatus.equals(responseError.httpStatus)) &&
        (this.errorCode == null ? responseError.errorCode == null : this.errorCode.equals(responseError.errorCode)) &&
        (this.description == null ? responseError.description == null : this.description.equals(responseError.description)) &&
        (this.documentationLink == null ? responseError.documentationLink == null : this.documentationLink.equals(responseError.documentationLink)) &&
        (this.additionalInfo == null ? responseError.additionalInfo == null : this.additionalInfo.equals(responseError.additionalInfo));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.httpStatus == null ? 0: this.httpStatus.hashCode());
    result = 31 * result + (this.errorCode == null ? 0: this.errorCode.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.documentationLink == null ? 0: this.documentationLink.hashCode());
    result = 31 * result + (this.additionalInfo == null ? 0: this.additionalInfo.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseError {\n");
    
    sb.append("  httpStatus: ").append(httpStatus).append("\n");
    sb.append("  errorCode: ").append(errorCode).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  documentationLink: ").append(documentationLink).append("\n");
    sb.append("  additionalInfo: ").append(additionalInfo).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
