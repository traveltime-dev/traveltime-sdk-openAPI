@isTest
private class OASRequestLocationTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = requestLocation1;
        OASRequestLocation requestLocation3 = new OASRequestLocation();
        OASRequestLocation requestLocation4 = requestLocation3;

        System.assert(requestLocation1.equals(requestLocation2));
        System.assert(requestLocation2.equals(requestLocation1));
        System.assert(requestLocation1.equals(requestLocation1));
        System.assert(requestLocation3.equals(requestLocation4));
        System.assert(requestLocation4.equals(requestLocation3));
        System.assert(requestLocation3.equals(requestLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation3 = new OASRequestLocation();
        OASRequestLocation requestLocation4 = new OASRequestLocation();

        System.assert(requestLocation1.equals(requestLocation2));
        System.assert(requestLocation2.equals(requestLocation1));
        System.assert(requestLocation3.equals(requestLocation4));
        System.assert(requestLocation4.equals(requestLocation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = new OASRequestLocation();

        System.assertEquals(false, requestLocation1.equals('foo'));
        System.assertEquals(false, requestLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = new OASRequestLocation();
        OASRequestLocation requestLocation3;

        System.assertEquals(false, requestLocation1.equals(requestLocation3));
        System.assertEquals(false, requestLocation2.equals(requestLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = new OASRequestLocation();

        System.assertEquals(requestLocation1.hashCode(), requestLocation1.hashCode());
        System.assertEquals(requestLocation2.hashCode(), requestLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestLocation requestLocation1 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation2 = OASRequestLocation.getExample();
        OASRequestLocation requestLocation3 = new OASRequestLocation();
        OASRequestLocation requestLocation4 = new OASRequestLocation();

        System.assert(requestLocation1.equals(requestLocation2));
        System.assert(requestLocation3.equals(requestLocation4));
        System.assertEquals(requestLocation1.hashCode(), requestLocation2.hashCode());
        System.assertEquals(requestLocation3.hashCode(), requestLocation4.hashCode());
    }
}
