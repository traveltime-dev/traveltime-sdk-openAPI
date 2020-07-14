@isTest
private class OASResponseMapInfoFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = responseMapInfoFeatures1;
        OASResponseMapInfoFeatures responseMapInfoFeatures3 = new OASResponseMapInfoFeatures();
        OASResponseMapInfoFeatures responseMapInfoFeatures4 = responseMapInfoFeatures3;

        System.assert(responseMapInfoFeatures1.equals(responseMapInfoFeatures2));
        System.assert(responseMapInfoFeatures2.equals(responseMapInfoFeatures1));
        System.assert(responseMapInfoFeatures1.equals(responseMapInfoFeatures1));
        System.assert(responseMapInfoFeatures3.equals(responseMapInfoFeatures4));
        System.assert(responseMapInfoFeatures4.equals(responseMapInfoFeatures3));
        System.assert(responseMapInfoFeatures3.equals(responseMapInfoFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures3 = new OASResponseMapInfoFeatures();
        OASResponseMapInfoFeatures responseMapInfoFeatures4 = new OASResponseMapInfoFeatures();

        System.assert(responseMapInfoFeatures1.equals(responseMapInfoFeatures2));
        System.assert(responseMapInfoFeatures2.equals(responseMapInfoFeatures1));
        System.assert(responseMapInfoFeatures3.equals(responseMapInfoFeatures4));
        System.assert(responseMapInfoFeatures4.equals(responseMapInfoFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = new OASResponseMapInfoFeatures();

        System.assertEquals(false, responseMapInfoFeatures1.equals('foo'));
        System.assertEquals(false, responseMapInfoFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = new OASResponseMapInfoFeatures();
        OASResponseMapInfoFeatures responseMapInfoFeatures3;

        System.assertEquals(false, responseMapInfoFeatures1.equals(responseMapInfoFeatures3));
        System.assertEquals(false, responseMapInfoFeatures2.equals(responseMapInfoFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = new OASResponseMapInfoFeatures();

        System.assertEquals(responseMapInfoFeatures1.hashCode(), responseMapInfoFeatures1.hashCode());
        System.assertEquals(responseMapInfoFeatures2.hashCode(), responseMapInfoFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseMapInfoFeatures responseMapInfoFeatures1 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures2 = OASResponseMapInfoFeatures.getExample();
        OASResponseMapInfoFeatures responseMapInfoFeatures3 = new OASResponseMapInfoFeatures();
        OASResponseMapInfoFeatures responseMapInfoFeatures4 = new OASResponseMapInfoFeatures();

        System.assert(responseMapInfoFeatures1.equals(responseMapInfoFeatures2));
        System.assert(responseMapInfoFeatures3.equals(responseMapInfoFeatures4));
        System.assertEquals(responseMapInfoFeatures1.hashCode(), responseMapInfoFeatures2.hashCode());
        System.assertEquals(responseMapInfoFeatures3.hashCode(), responseMapInfoFeatures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseMapInfoFeatures responseMapInfoFeatures = new OASResponseMapInfoFeatures();
        Map<String, String> x-property-mappings = responseMapInfoFeatures.getx-property-mappings();
        System.assertEquals('publicTransport', x-property-mappings.get('public_transport'));
    }
}
