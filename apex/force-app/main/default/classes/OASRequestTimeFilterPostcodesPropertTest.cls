@isTest
private class OASRequestTimeFilterPostcodesPropertTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestTimeFilterPostcodesPropert> expected = new Set<OASRequestTimeFilterPostcodesPropert>{
            OASRequestTimeFilterPostcodesPropert.TRAVEL_TIME,
            OASRequestTimeFilterPostcodesPropert.DISTANCE
        };
        Set<OASRequestTimeFilterPostcodesPropert> actual  = new Set<OASRequestTimeFilterPostcodesPropert>(OASRequestTimeFilterPostcodesPropert.values());
        System.assertEquals(expected, actual);
    }
}
