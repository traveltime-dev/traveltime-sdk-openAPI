package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterFastProperties;

/**
 * ResponseTimeFilterFastLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-11T08:37:55.137Z[Etc/UTC]")
public class ResponseTimeFilterFastLocation   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("properties")
  private List<ResponseTimeFilterFastProperties> properties = new ArrayList<ResponseTimeFilterFastProperties>();

  public ResponseTimeFilterFastLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseTimeFilterFastLocation properties(List<ResponseTimeFilterFastProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseTimeFilterFastLocation addPropertiesItem(ResponseTimeFilterFastProperties propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterFastProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseTimeFilterFastProperties> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterFastLocation responseTimeFilterFastLocation = (ResponseTimeFilterFastLocation) o;
    return Objects.equals(this.id, responseTimeFilterFastLocation.id) &&
        Objects.equals(this.properties, responseTimeFilterFastLocation.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFastLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

