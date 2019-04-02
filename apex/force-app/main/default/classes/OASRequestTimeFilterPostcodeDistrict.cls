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
 * OASRequestTimeFilterPostcodeDistrict
 */
public class OASRequestTimeFilterPostcodeDistrict implements OAS.MappedProperties {
    /**
     * Get departureSearches
     * @return departureSearches
     */
    public List<OASRequestTimeFilterPostcodeDistrict> departureSearches { get; set; }

    /**
     * Get arrivalSearches
     * @return arrivalSearches
     */
    public List<OASRequestTimeFilterPostcodeDistrict> arrivalSearches { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'departure_searches' => 'departureSearches',
        'arrival_searches' => 'arrivalSearches'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASRequestTimeFilterPostcodeDistrict() {
        departureSearches = new List<OASRequestTimeFilterPostcodeDistrict>();
        arrivalSearches = new List<OASRequestTimeFilterPostcodeDistrict>();
    }

    public static OASRequestTimeFilterPostcodeDistrict getExample() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts = new OASRequestTimeFilterPostcodeDistrict();
          requestTimeFilterPostcodeDistricts.departureSearches = new List<OASRequestTimeFilterPostcodeDistrict>{OASRequestTimeFilterPostcodeDistrict.getExample()};
          requestTimeFilterPostcodeDistricts.arrivalSearches = new List<OASRequestTimeFilterPostcodeDistrict>{OASRequestTimeFilterPostcodeDistrict.getExample()};
        return requestTimeFilterPostcodeDistricts;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRequestTimeFilterPostcodeDistrict) {           
            OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts = (OASRequestTimeFilterPostcodeDistrict) obj;
            return this.departureSearches == requestTimeFilterPostcodeDistricts.departureSearches
                && this.arrivalSearches == requestTimeFilterPostcodeDistricts.arrivalSearches;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (departureSearches == null ? 0 : System.hashCode(departureSearches));
        hashCode = (17 * hashCode) + (arrivalSearches == null ? 0 : System.hashCode(arrivalSearches));
        return hashCode;
    }
}
