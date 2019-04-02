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
 * OASResponseTimeFilterFastProperties
 */
public class OASResponseTimeFilterFastProperties implements OAS.MappedProperties {
    /**
     * Get travelTime
     * @return travelTime
     */
    public Integer travelTime { get; set; }

    /**
     * Get fares
     * @return fares
     */
    public OASResponseFaresFast fares { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'travel_time' => 'travelTime'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASResponseTimeFilterFastProperties getExample() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties = new OASResponseTimeFilterFastProperties();
          responseTimeFilterFastProperties.travelTime = 0;
          responseTimeFilterFastProperties.fares = OASResponseFaresFast.getExample();
        return responseTimeFilterFastProperties;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseTimeFilterFastProperties) {           
            OASResponseTimeFilterFastProperties responseTimeFilterFastProperties = (OASResponseTimeFilterFastProperties) obj;
            return this.travelTime == responseTimeFilterFastProperties.travelTime
                && this.fares == responseTimeFilterFastProperties.fares;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (travelTime == null ? 0 : System.hashCode(travelTime));
        hashCode = (17 * hashCode) + (fares == null ? 0 : System.hashCode(fares));
        return hashCode;
    }
}
