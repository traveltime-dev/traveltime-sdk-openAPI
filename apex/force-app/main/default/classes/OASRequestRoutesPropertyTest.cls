@isTest
private class OASRequestRoutesPropertyTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestRoutesProperty> expected = new Set<OASRequestRoutesProperty>{
            OASRequestRoutesProperty.TRAVEL_TIME,
            OASRequestRoutesProperty.DISTANCE,
            OASRequestRoutesProperty.FARES,
            OASRequestRoutesProperty.ROUTE
        };
        Set<OASRequestRoutesProperty> actual  = new Set<OASRequestRoutesProperty>(OASRequestRoutesProperty.values());
        System.assertEquals(expected, actual);
    }
}
