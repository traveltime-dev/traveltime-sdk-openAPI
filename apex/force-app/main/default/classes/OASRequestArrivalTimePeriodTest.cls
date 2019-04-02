@isTest
private class OASRequestArrivalTimePeriodTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestArrivalTimePeriod> expected = new Set<OASRequestArrivalTimePeriod>{
            OASRequestArrivalTimePeriod.WEEKDAY_MORNING
        };
        Set<OASRequestArrivalTimePeriod> actual  = new Set<OASRequestArrivalTimePeriod>(OASRequestArrivalTimePeriod.values());
        System.assertEquals(expected, actual);
    }
}
