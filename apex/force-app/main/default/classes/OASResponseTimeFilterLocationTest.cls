@isTest
private class OASResponseTimeFilterLocationTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = responseTimeFilterLocation1;
        OASResponseTimeFilterLocation responseTimeFilterLocation3 = new OASResponseTimeFilterLocation();
        OASResponseTimeFilterLocation responseTimeFilterLocation4 = responseTimeFilterLocation3;

        System.assert(responseTimeFilterLocation1.equals(responseTimeFilterLocation2));
        System.assert(responseTimeFilterLocation2.equals(responseTimeFilterLocation1));
        System.assert(responseTimeFilterLocation1.equals(responseTimeFilterLocation1));
        System.assert(responseTimeFilterLocation3.equals(responseTimeFilterLocation4));
        System.assert(responseTimeFilterLocation4.equals(responseTimeFilterLocation3));
        System.assert(responseTimeFilterLocation3.equals(responseTimeFilterLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation3 = new OASResponseTimeFilterLocation();
        OASResponseTimeFilterLocation responseTimeFilterLocation4 = new OASResponseTimeFilterLocation();

        System.assert(responseTimeFilterLocation1.equals(responseTimeFilterLocation2));
        System.assert(responseTimeFilterLocation2.equals(responseTimeFilterLocation1));
        System.assert(responseTimeFilterLocation3.equals(responseTimeFilterLocation4));
        System.assert(responseTimeFilterLocation4.equals(responseTimeFilterLocation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = new OASResponseTimeFilterLocation();

        System.assertEquals(false, responseTimeFilterLocation1.equals('foo'));
        System.assertEquals(false, responseTimeFilterLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = new OASResponseTimeFilterLocation();
        OASResponseTimeFilterLocation responseTimeFilterLocation3;

        System.assertEquals(false, responseTimeFilterLocation1.equals(responseTimeFilterLocation3));
        System.assertEquals(false, responseTimeFilterLocation2.equals(responseTimeFilterLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = new OASResponseTimeFilterLocation();

        System.assertEquals(responseTimeFilterLocation1.hashCode(), responseTimeFilterLocation1.hashCode());
        System.assertEquals(responseTimeFilterLocation2.hashCode(), responseTimeFilterLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterLocation responseTimeFilterLocation1 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation2 = OASResponseTimeFilterLocation.getExample();
        OASResponseTimeFilterLocation responseTimeFilterLocation3 = new OASResponseTimeFilterLocation();
        OASResponseTimeFilterLocation responseTimeFilterLocation4 = new OASResponseTimeFilterLocation();

        System.assert(responseTimeFilterLocation1.equals(responseTimeFilterLocation2));
        System.assert(responseTimeFilterLocation3.equals(responseTimeFilterLocation4));
        System.assertEquals(responseTimeFilterLocation1.hashCode(), responseTimeFilterLocation2.hashCode());
        System.assertEquals(responseTimeFilterLocation3.hashCode(), responseTimeFilterLocation4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterLocation responseTimeFilterLocation = new OASResponseTimeFilterLocation();
        System.assertEquals(new List<OASResponseTimeFilterProperties>(), responseTimeFilterLocation.properties);
        System.assertEquals(null, responseTimeFilterLocation.id);
    }
}
