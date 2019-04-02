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
 * OASRequestTimeFilterArrivalSearch
 */
public class OASRequestTimeFilterArrivalSearch implements OAS.MappedProperties {
    /**
     * Get id
     * @return id
     */
    public String id { get; set; }

    /**
     * Get departureLocationIds
     * @return departureLocationIds
     */
    public List<String> departureLocationIds { get; set; }

    /**
     * Get arrivalLocationId
     * @return arrivalLocationId
     */
    public String arrivalLocationId { get; set; }

    /**
     * Get transportation
     * @return transportation
     */
    public OASRequestTransportation transportation { get; set; }

    /**
     * Get travelTime
     * minimum: 60
     * maximum: 14400
     * @return travelTime
     */
    public Integer travelTime { get; set; }

    /**
     * Get arrivalTime
     * @return arrivalTime
     */
    public Datetime arrivalTime { get; set; }

    /**
     * Get properties
     * @return properties
     */
    public List<OASRequestTimeFilterProperty> properties { get; set; }

    /**
     * Get range
     * @return range
     */
    public OASRequestRangeFull range { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'departure_location_ids' => 'departureLocationIds',
        'arrival_location_id' => 'arrivalLocationId',
        'travel_time' => 'travelTime',
        'arrival_time' => 'arrivalTime'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASRequestTimeFilterArrivalSearch() {
        departureLocationIds = new List<String>();
        properties = new List<OASRequestTimeFilterProperty>();
    }

    public static OASRequestTimeFilterArrivalSearch getExample() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch = new OASRequestTimeFilterArrivalSearch();
          requestTimeFilterArrivalSearch.id = '';
          requestTimeFilterArrivalSearch.departureLocationIds = new List<String>{''};
          requestTimeFilterArrivalSearch.arrivalLocationId = '';
          requestTimeFilterArrivalSearch.transportation = OASRequestTransportation.getExample();
          requestTimeFilterArrivalSearch.travelTime = 0;
          requestTimeFilterArrivalSearch.arrivalTime = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          requestTimeFilterArrivalSearch.properties = new List<OASRequestTimeFilterProperty>{OASRequestTimeFilterProperty.getExample()};
          requestTimeFilterArrivalSearch.range = OASRequestRangeFull.getExample();
        return requestTimeFilterArrivalSearch;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRequestTimeFilterArrivalSearch) {           
            OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch = (OASRequestTimeFilterArrivalSearch) obj;
            return this.id == requestTimeFilterArrivalSearch.id
                && this.departureLocationIds == requestTimeFilterArrivalSearch.departureLocationIds
                && this.arrivalLocationId == requestTimeFilterArrivalSearch.arrivalLocationId
                && this.transportation == requestTimeFilterArrivalSearch.transportation
                && this.travelTime == requestTimeFilterArrivalSearch.travelTime
                && this.arrivalTime == requestTimeFilterArrivalSearch.arrivalTime
                && this.properties == requestTimeFilterArrivalSearch.properties
                && this.range == requestTimeFilterArrivalSearch.range;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (departureLocationIds == null ? 0 : System.hashCode(departureLocationIds));
        hashCode = (17 * hashCode) + (arrivalLocationId == null ? 0 : System.hashCode(arrivalLocationId));
        hashCode = (17 * hashCode) + (transportation == null ? 0 : System.hashCode(transportation));
        hashCode = (17 * hashCode) + (travelTime == null ? 0 : System.hashCode(travelTime));
        hashCode = (17 * hashCode) + (arrivalTime == null ? 0 : System.hashCode(arrivalTime));
        hashCode = (17 * hashCode) + (properties == null ? 0 : System.hashCode(properties));
        hashCode = (17 * hashCode) + (range == null ? 0 : System.hashCode(range));
        return hashCode;
    }
}
