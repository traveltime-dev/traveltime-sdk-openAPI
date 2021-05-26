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



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseTimeMapProperties   {
  
  private @Valid Boolean isOnlyWalking;

  /**
   **/
  public ResponseTimeMapProperties isOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("is_only_walking")
  public Boolean getIsOnlyWalking() {
    return isOnlyWalking;
  }

  public void setIsOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapProperties responseTimeMapProperties = (ResponseTimeMapProperties) o;
    return Objects.equals(this.isOnlyWalking, responseTimeMapProperties.isOnlyWalking);
  }

  @Override
  public int hashCode() {
    return Objects.hash(isOnlyWalking);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

