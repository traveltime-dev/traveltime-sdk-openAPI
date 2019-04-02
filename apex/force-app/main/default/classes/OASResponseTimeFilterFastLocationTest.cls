@isTest
private class OASResponseTimeFilterFastLocationTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = responseTimeFilterFastLocation1;
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation3 = new OASResponseTimeFilterFastLocation();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation4 = responseTimeFilterFastLocation3;

        System.assert(responseTimeFilterFastLocation1.equals(responseTimeFilterFastLocation2));
        System.assert(responseTimeFilterFastLocation2.equals(responseTimeFilterFastLocation1));
        System.assert(responseTimeFilterFastLocation1.equals(responseTimeFilterFastLocation1));
        System.assert(responseTimeFilterFastLocation3.equals(responseTimeFilterFastLocation4));
        System.assert(responseTimeFilterFastLocation4.equals(responseTimeFilterFastLocation3));
        System.assert(responseTimeFilterFastLocation3.equals(responseTimeFilterFastLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation3 = new OASResponseTimeFilterFastLocation();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation4 = new OASResponseTimeFilterFastLocation();

        System.assert(responseTimeFilterFastLocation1.equals(responseTimeFilterFastLocation2));
        System.assert(responseTimeFilterFastLocation2.equals(responseTimeFilterFastLocation1));
        System.assert(responseTimeFilterFastLocation3.equals(responseTimeFilterFastLocation4));
        System.assert(responseTimeFilterFastLocation4.equals(responseTimeFilterFastLocation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = new OASResponseTimeFilterFastLocation();

        System.assertEquals(false, responseTimeFilterFastLocation1.equals('foo'));
        System.assertEquals(false, responseTimeFilterFastLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = new OASResponseTimeFilterFastLocation();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation3;

        System.assertEquals(false, responseTimeFilterFastLocation1.equals(responseTimeFilterFastLocation3));
        System.assertEquals(false, responseTimeFilterFastLocation2.equals(responseTimeFilterFastLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = new OASResponseTimeFilterFastLocation();

        System.assertEquals(responseTimeFilterFastLocation1.hashCode(), responseTimeFilterFastLocation1.hashCode());
        System.assertEquals(responseTimeFilterFastLocation2.hashCode(), responseTimeFilterFastLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation1 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation2 = OASResponseTimeFilterFastLocation.getExample();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation3 = new OASResponseTimeFilterFastLocation();
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation4 = new OASResponseTimeFilterFastLocation();

        System.assert(responseTimeFilterFastLocation1.equals(responseTimeFilterFastLocation2));
        System.assert(responseTimeFilterFastLocation3.equals(responseTimeFilterFastLocation4));
        System.assertEquals(responseTimeFilterFastLocation1.hashCode(), responseTimeFilterFastLocation2.hashCode());
        System.assertEquals(responseTimeFilterFastLocation3.hashCode(), responseTimeFilterFastLocation4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterFastLocation responseTimeFilterFastLocation = new OASResponseTimeFilterFastLocation();
        System.assertEquals(new List<OASResponseTimeFilterFastProperties>(), responseTimeFilterFastLocation.properties);
        System.assertEquals(null, responseTimeFilterFastLocation.id);
    }
}
