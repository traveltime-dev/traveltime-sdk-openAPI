@isTest
private class OASRequestTimeFilterFastPropertyTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestTimeFilterFastProperty> expected = new Set<OASRequestTimeFilterFastProperty>{
            OASRequestTimeFilterFastProperty.TRAVEL_TIME,
            OASRequestTimeFilterFastProperty.FARES
        };
        Set<OASRequestTimeFilterFastProperty> actual  = new Set<OASRequestTimeFilterFastProperty>(OASRequestTimeFilterFastProperty.values());
        System.assertEquals(expected, actual);
    }
}
