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



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class RequestLevelOfDetail   {
  

public enum ScaleTypeEnum {

    SIMPLE(String.valueOf("simple"));


    private String value;

    ScaleTypeEnum (String v) {
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
    public static ScaleTypeEnum fromValue(String value) {
        for (ScaleTypeEnum b : ScaleTypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  private @Valid ScaleTypeEnum scaleType;

public enum LevelEnum {

    LOWEST(String.valueOf("lowest")), LOW(String.valueOf("low")), MEDIUM(String.valueOf("medium")), HIGH(String.valueOf("high")), HIGHEST(String.valueOf("highest"));


    private String value;

    LevelEnum (String v) {
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
    public static LevelEnum fromValue(String value) {
        for (LevelEnum b : LevelEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  private @Valid LevelEnum level;

  /**
   **/
  public RequestLevelOfDetail scaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("scale_type")
  @NotNull
  public ScaleTypeEnum getScaleType() {
    return scaleType;
  }

  public void setScaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
  }

/**
   **/
  public RequestLevelOfDetail level(LevelEnum level) {
    this.level = level;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("level")
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

