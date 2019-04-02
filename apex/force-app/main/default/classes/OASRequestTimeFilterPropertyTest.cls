@isTest
private class OASRequestTimeFilterPropertyTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestTimeFilterProperty> expected = new Set<OASRequestTimeFilterProperty>{
            OASRequestTimeFilterProperty.TRAVEL_TIME,
            OASRequestTimeFilterProperty.DISTANCE,
            OASRequestTimeFilterProperty.DISTANCE_BREAKDOWN,
            OASRequestTimeFilterProperty.FARES,
            OASRequestTimeFilterProperty.ROUTE
        };
        Set<OASRequestTimeFilterProperty> actual  = new Set<OASRequestTimeFilterProperty>(OASRequestTimeFilterProperty.values());
        System.assertEquals(expected, actual);
    }
}
