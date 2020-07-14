@isTest
private class OASResponseSupportedLocationTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = responseSupportedLocation1;
        OASResponseSupportedLocation responseSupportedLocation3 = new OASResponseSupportedLocation();
        OASResponseSupportedLocation responseSupportedLocation4 = responseSupportedLocation3;

        System.assert(responseSupportedLocation1.equals(responseSupportedLocation2));
        System.assert(responseSupportedLocation2.equals(responseSupportedLocation1));
        System.assert(responseSupportedLocation1.equals(responseSupportedLocation1));
        System.assert(responseSupportedLocation3.equals(responseSupportedLocation4));
        System.assert(responseSupportedLocation4.equals(responseSupportedLocation3));
        System.assert(responseSupportedLocation3.equals(responseSupportedLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation3 = new OASResponseSupportedLocation();
        OASResponseSupportedLocation responseSupportedLocation4 = new OASResponseSupportedLocation();

        System.assert(responseSupportedLocation1.equals(responseSupportedLocation2));
        System.assert(responseSupportedLocation2.equals(responseSupportedLocation1));
        System.assert(responseSupportedLocation3.equals(responseSupportedLocation4));
        System.assert(responseSupportedLocation4.equals(responseSupportedLocation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = new OASResponseSupportedLocation();

        System.assertEquals(false, responseSupportedLocation1.equals('foo'));
        System.assertEquals(false, responseSupportedLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = new OASResponseSupportedLocation();
        OASResponseSupportedLocation responseSupportedLocation3;

        System.assertEquals(false, responseSupportedLocation1.equals(responseSupportedLocation3));
        System.assertEquals(false, responseSupportedLocation2.equals(responseSupportedLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = new OASResponseSupportedLocation();

        System.assertEquals(responseSupportedLocation1.hashCode(), responseSupportedLocation1.hashCode());
        System.assertEquals(responseSupportedLocation2.hashCode(), responseSupportedLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseSupportedLocation responseSupportedLocation1 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation2 = OASResponseSupportedLocation.getExample();
        OASResponseSupportedLocation responseSupportedLocation3 = new OASResponseSupportedLocation();
        OASResponseSupportedLocation responseSupportedLocation4 = new OASResponseSupportedLocation();

        System.assert(responseSupportedLocation1.equals(responseSupportedLocation2));
        System.assert(responseSupportedLocation3.equals(responseSupportedLocation4));
        System.assertEquals(responseSupportedLocation1.hashCode(), responseSupportedLocation2.hashCode());
        System.assertEquals(responseSupportedLocation3.hashCode(), responseSupportedLocation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseSupportedLocation responseSupportedLocation = new OASResponseSupportedLocation();
        Map<String, String> x-property-mappings = responseSupportedLocation.getx-property-mappings();
        System.assertEquals('mapName', x-property-mappings.get('map_name'));
    }
}
