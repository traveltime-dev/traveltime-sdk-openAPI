/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OAS-api/OAS-codegen.git
 * Do not edit the class manually.
 */

/**
 * OASRequestRangeNoMaxResults
 */
public class OASRequestRangeNoMaxResults {
    /**
     * Get enabled
     * @return enabled
     */
    public Boolean enabled { get; set; }

    /**
     * Get width
     * minimum: 1
     * maximum: 43200
     * @return width
     */
    public Integer width { get; set; }

    public static OASRequestRangeNoMaxResults getExample() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults = new OASRequestRangeNoMaxResults();
          requestRangeNoMaxResults.enabled = true;
          requestRangeNoMaxResults.width = 0;
        return requestRangeNoMaxResults;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRequestRangeNoMaxResults) {           
            OASRequestRangeNoMaxResults requestRangeNoMaxResults = (OASRequestRangeNoMaxResults) obj;
            return this.enabled == requestRangeNoMaxResults.enabled
                && this.width == requestRangeNoMaxResults.width;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (enabled == null ? 0 : System.hashCode(enabled));
        hashCode = (17 * hashCode) + (width == null ? 0 : System.hashCode(width));
        return hashCode;
    }
}
