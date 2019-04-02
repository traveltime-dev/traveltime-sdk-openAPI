@isTest
private class OASRequestSupportedLocationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = requestSupportedLocations1;
        OASRequestSupportedLocations requestSupportedLocations3 = new OASRequestSupportedLocations();
        OASRequestSupportedLocations requestSupportedLocations4 = requestSupportedLocations3;

        System.assert(requestSupportedLocations1.equals(requestSupportedLocations2));
        System.assert(requestSupportedLocations2.equals(requestSupportedLocations1));
        System.assert(requestSupportedLocations1.equals(requestSupportedLocations1));
        System.assert(requestSupportedLocations3.equals(requestSupportedLocations4));
        System.assert(requestSupportedLocations4.equals(requestSupportedLocations3));
        System.assert(requestSupportedLocations3.equals(requestSupportedLocations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations3 = new OASRequestSupportedLocations();
        OASRequestSupportedLocations requestSupportedLocations4 = new OASRequestSupportedLocations();

        System.assert(requestSupportedLocations1.equals(requestSupportedLocations2));
        System.assert(requestSupportedLocations2.equals(requestSupportedLocations1));
        System.assert(requestSupportedLocations3.equals(requestSupportedLocations4));
        System.assert(requestSupportedLocations4.equals(requestSupportedLocations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = new OASRequestSupportedLocations();

        System.assertEquals(false, requestSupportedLocations1.equals('foo'));
        System.assertEquals(false, requestSupportedLocations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = new OASRequestSupportedLocations();
        OASRequestSupportedLocations requestSupportedLocations3;

        System.assertEquals(false, requestSupportedLocations1.equals(requestSupportedLocations3));
        System.assertEquals(false, requestSupportedLocations2.equals(requestSupportedLocations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = new OASRequestSupportedLocations();

        System.assertEquals(requestSupportedLocations1.hashCode(), requestSupportedLocations1.hashCode());
        System.assertEquals(requestSupportedLocations2.hashCode(), requestSupportedLocations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestSupportedLocations requestSupportedLocations1 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations2 = OASRequestSupportedLocations.getExample();
        OASRequestSupportedLocations requestSupportedLocations3 = new OASRequestSupportedLocations();
        OASRequestSupportedLocations requestSupportedLocations4 = new OASRequestSupportedLocations();

        System.assert(requestSupportedLocations1.equals(requestSupportedLocations2));
        System.assert(requestSupportedLocations3.equals(requestSupportedLocations4));
        System.assertEquals(requestSupportedLocations1.hashCode(), requestSupportedLocations2.hashCode());
        System.assertEquals(requestSupportedLocations3.hashCode(), requestSupportedLocations4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestSupportedLocations requestSupportedLocations = new OASRequestSupportedLocations();
        System.assertEquals(new List<OASRequestLocation>(), requestSupportedLocations.locations);
    }
}
