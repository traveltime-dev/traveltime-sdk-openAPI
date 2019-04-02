@isTest
private class OASRequestTimeFilterPostcodeSectorsPTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestTimeFilterPostcodeSectorsP> expected = new Set<OASRequestTimeFilterPostcodeSectorsP>{
            OASRequestTimeFilterPostcodeSectorsP.TRAVEL_TIME_REACHABLE,
            OASRequestTimeFilterPostcodeSectorsP.TRAVEL_TIME_ALL,
            OASRequestTimeFilterPostcodeSectorsP.COVERAGE
        };
        Set<OASRequestTimeFilterPostcodeSectorsP> actual  = new Set<OASRequestTimeFilterPostcodeSectorsP>(OASRequestTimeFilterPostcodeSectorsP.values());
        System.assertEquals(expected, actual);
    }
}
