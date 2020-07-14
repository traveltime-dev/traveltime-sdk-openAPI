@isTest
private class OASResponseSupportedLocationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = responseSupportedLocations1;
        OASResponseSupportedLocations responseSupportedLocations3 = new OASResponseSupportedLocations();
        OASResponseSupportedLocations responseSupportedLocations4 = responseSupportedLocations3;

        System.assert(responseSupportedLocations1.equals(responseSupportedLocations2));
        System.assert(responseSupportedLocations2.equals(responseSupportedLocations1));
        System.assert(responseSupportedLocations1.equals(responseSupportedLocations1));
        System.assert(responseSupportedLocations3.equals(responseSupportedLocations4));
        System.assert(responseSupportedLocations4.equals(responseSupportedLocations3));
        System.assert(responseSupportedLocations3.equals(responseSupportedLocations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations3 = new OASResponseSupportedLocations();
        OASResponseSupportedLocations responseSupportedLocations4 = new OASResponseSupportedLocations();

        System.assert(responseSupportedLocations1.equals(responseSupportedLocations2));
        System.assert(responseSupportedLocations2.equals(responseSupportedLocations1));
        System.assert(responseSupportedLocations3.equals(responseSupportedLocations4));
        System.assert(responseSupportedLocations4.equals(responseSupportedLocations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = new OASResponseSupportedLocations();

        System.assertEquals(false, responseSupportedLocations1.equals('foo'));
        System.assertEquals(false, responseSupportedLocations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = new OASResponseSupportedLocations();
        OASResponseSupportedLocations responseSupportedLocations3;

        System.assertEquals(false, responseSupportedLocations1.equals(responseSupportedLocations3));
        System.assertEquals(false, responseSupportedLocations2.equals(responseSupportedLocations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = new OASResponseSupportedLocations();

        System.assertEquals(responseSupportedLocations1.hashCode(), responseSupportedLocations1.hashCode());
        System.assertEquals(responseSupportedLocations2.hashCode(), responseSupportedLocations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseSupportedLocations responseSupportedLocations1 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations2 = OASResponseSupportedLocations.getExample();
        OASResponseSupportedLocations responseSupportedLocations3 = new OASResponseSupportedLocations();
        OASResponseSupportedLocations responseSupportedLocations4 = new OASResponseSupportedLocations();

        System.assert(responseSupportedLocations1.equals(responseSupportedLocations2));
        System.assert(responseSupportedLocations3.equals(responseSupportedLocations4));
        System.assertEquals(responseSupportedLocations1.hashCode(), responseSupportedLocations2.hashCode());
        System.assertEquals(responseSupportedLocations3.hashCode(), responseSupportedLocations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseSupportedLocations responseSupportedLocations = new OASResponseSupportedLocations();
        Map<String, String> x-property-mappings = responseSupportedLocations.getx-property-mappings();
        System.assertEquals('unsupportedLocations', x-property-mappings.get('unsupported_locations'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseSupportedLocations responseSupportedLocations = new OASResponseSupportedLocations();
        System.assertEquals(new List<OASResponseSupportedLocation>(), responseSupportedLocations.locations);
        System.assertEquals(new List<String>(), responseSupportedLocations.unsupportedLocations);
    }
}
