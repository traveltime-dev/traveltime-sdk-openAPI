@isTest
private class OASRequestTimeMapPropertyTest {
    @isTest
    private static void allowableValues() {
        Set<OASRequestTimeMapProperty> expected = new Set<OASRequestTimeMapProperty>{
            OASRequestTimeMapProperty.IS_ONLY_WALKING
        };
        Set<OASRequestTimeMapProperty> actual  = new Set<OASRequestTimeMapProperty>(OASRequestTimeMapProperty.values());
        System.assertEquals(expected, actual);
    }
}
