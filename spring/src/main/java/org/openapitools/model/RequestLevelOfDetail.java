package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestLevelOfDetail
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-26T18:51:56.918Z[Etc/UTC]")
public class RequestLevelOfDetail   {
  /**
   * Gets or Sets scaleType
   */
  public enum ScaleTypeEnum {
    SIMPLE("simple");

    private String value;

    ScaleTypeEnum(String value) {
      this.value = value;
    }

    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static ScaleTypeEnum fromValue(String value) {
      for (ScaleTypeEnum b : ScaleTypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  @JsonProperty("scale_type")
  private ScaleTypeEnum scaleType;

  /**
   * Gets or Sets level
   */
  public enum LevelEnum {
    LOWEST("lowest"),
    
    LOW("low"),
    
    MEDIUM("medium"),
    
    HIGH("high"),
    
    HIGHEST("highest");

    private String value;

    LevelEnum(String value) {
      this.value = value;
    }

    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static LevelEnum fromValue(String value) {
      for (LevelEnum b : LevelEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  @JsonProperty("level")
  private LevelEnum level;

  public RequestLevelOfDetail scaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
    return this;
  }

  /**
   * Get scaleType
   * @return scaleType
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


  public ScaleTypeEnum getScaleType() {
    return scaleType;
  }

  public void setScaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
  }

  public RequestLevelOfDetail level(LevelEnum level) {
    this.level = level;
    return this;
  }

  /**
   * Get level
   * @return level
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


  public LevelEnum getLevel() {
    return level;
  }

  public void setLevel(LevelEnum level) {
    this.level = level;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestLevelOfDetail requestLevelOfDetail = (RequestLevelOfDetail) o;
    return Objects.equals(this.scaleType, requestLevelOfDetail.scaleType) &&
        Objects.equals(this.level, requestLevelOfDetail.level);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scaleType, level);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestLevelOfDetail {\n");
    
    sb.append("    scaleType: ").append(toIndentedString(scaleType)).append("\n");
    sb.append("    level: ").append(toIndentedString(level)).append("\n");
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

