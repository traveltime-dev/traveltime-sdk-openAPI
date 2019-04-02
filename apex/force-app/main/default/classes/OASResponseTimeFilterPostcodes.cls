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
 * OASResponseTimeFilterPostcodes
 */
public class OASResponseTimeFilterPostcodes {
    /**
     * Get results
     * @return results
     */
    public List<OASResponseTimeFilterPostcodesResult> results { get; set; }

    public OASResponseTimeFilterPostcodes() {
        results = new List<OASResponseTimeFilterPostcodesResult>();
    }

    public static OASResponseTimeFilterPostcodes getExample() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes = new OASResponseTimeFilterPostcodes();
          responseTimeFilterPostcodes.results = new List<OASResponseTimeFilterPostcodesResult>{OASResponseTimeFilterPostcodesResult.getExample()};
        return responseTimeFilterPostcodes;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseTimeFilterPostcodes) {           
            OASResponseTimeFilterPostcodes responseTimeFilterPostcodes = (OASResponseTimeFilterPostcodes) obj;
            return this.results == responseTimeFilterPostcodes.results;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (results == null ? 0 : System.hashCode(results));
        return hashCode;
    }
}
