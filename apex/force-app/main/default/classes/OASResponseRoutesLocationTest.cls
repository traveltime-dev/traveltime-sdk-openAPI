@isTest
private class OASResponseRoutesLocationTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = responseRoutesLocation1;
        OASResponseRoutesLocation responseRoutesLocation3 = new OASResponseRoutesLocation();
        OASResponseRoutesLocation responseRoutesLocation4 = responseRoutesLocation3;

        System.assert(responseRoutesLocation1.equals(responseRoutesLocation2));
        System.assert(responseRoutesLocation2.equals(responseRoutesLocation1));
        System.assert(responseRoutesLocation1.equals(responseRoutesLocation1));
        System.assert(responseRoutesLocation3.equals(responseRoutesLocation4));
        System.assert(responseRoutesLocation4.equals(responseRoutesLocation3));
        System.assert(responseRoutesLocation3.equals(responseRoutesLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation3 = new OASResponseRoutesLocation();
        OASResponseRoutesLocation responseRoutesLocation4 = new OASResponseRoutesLocation();

        System.assert(responseRoutesLocation1.equals(responseRoutesLocation2));
        System.assert(responseRoutesLocation2.equals(responseRoutesLocation1));
        System.assert(responseRoutesLocation3.equals(responseRoutesLocation4));
        System.assert(responseRoutesLocation4.equals(responseRoutesLocation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = new OASResponseRoutesLocation();

        System.assertEquals(false, responseRoutesLocation1.equals('foo'));
        System.assertEquals(false, responseRoutesLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = new OASResponseRoutesLocation();
        OASResponseRoutesLocation responseRoutesLocation3;

        System.assertEquals(false, responseRoutesLocation1.equals(responseRoutesLocation3));
        System.assertEquals(false, responseRoutesLocation2.equals(responseRoutesLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = new OASResponseRoutesLocation();

        System.assertEquals(responseRoutesLocation1.hashCode(), responseRoutesLocation1.hashCode());
        System.assertEquals(responseRoutesLocation2.hashCode(), responseRoutesLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoutesLocation responseRoutesLocation1 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation2 = OASResponseRoutesLocation.getExample();
        OASResponseRoutesLocation responseRoutesLocation3 = new OASResponseRoutesLocation();
        OASResponseRoutesLocation responseRoutesLocation4 = new OASResponseRoutesLocation();

        System.assert(responseRoutesLocation1.equals(responseRoutesLocation2));
        System.assert(responseRoutesLocation3.equals(responseRoutesLocation4));
        System.assertEquals(responseRoutesLocation1.hashCode(), responseRoutesLocation2.hashCode());
        System.assertEquals(responseRoutesLocation3.hashCode(), responseRoutesLocation4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseRoutesLocation responseRoutesLocation = new OASResponseRoutesLocation();
        System.assertEquals(new List<OASResponseRoutesProperties>(), responseRoutesLocation.properties);
        System.assertEquals(null, responseRoutesLocation.id);
    }
}
