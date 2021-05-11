@isTest
private class OASRequestTransportationFastTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = requestTransportationFast1;
        OASRequestTransportationFast requestTransportationFast3 = new OASRequestTransportationFast();
        OASRequestTransportationFast requestTransportationFast4 = requestTransportationFast3;

        System.assert(requestTransportationFast1.equals(requestTransportationFast2));
        System.assert(requestTransportationFast2.equals(requestTransportationFast1));
        System.assert(requestTransportationFast1.equals(requestTransportationFast1));
        System.assert(requestTransportationFast3.equals(requestTransportationFast4));
        System.assert(requestTransportationFast4.equals(requestTransportationFast3));
        System.assert(requestTransportationFast3.equals(requestTransportationFast3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast3 = new OASRequestTransportationFast();
        OASRequestTransportationFast requestTransportationFast4 = new OASRequestTransportationFast();

        System.assert(requestTransportationFast1.equals(requestTransportationFast2));
        System.assert(requestTransportationFast2.equals(requestTransportationFast1));
        System.assert(requestTransportationFast3.equals(requestTransportationFast4));
        System.assert(requestTransportationFast4.equals(requestTransportationFast3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = new OASRequestTransportationFast();

        System.assertEquals(false, requestTransportationFast1.equals('foo'));
        System.assertEquals(false, requestTransportationFast2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = new OASRequestTransportationFast();
        OASRequestTransportationFast requestTransportationFast3;

        System.assertEquals(false, requestTransportationFast1.equals(requestTransportationFast3));
        System.assertEquals(false, requestTransportationFast2.equals(requestTransportationFast3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = new OASRequestTransportationFast();

        System.assertEquals(requestTransportationFast1.hashCode(), requestTransportationFast1.hashCode());
        System.assertEquals(requestTransportationFast2.hashCode(), requestTransportationFast2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTransportationFast requestTransportationFast1 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast2 = OASRequestTransportationFast.getExample();
        OASRequestTransportationFast requestTransportationFast3 = new OASRequestTransportationFast();
        OASRequestTransportationFast requestTransportationFast4 = new OASRequestTransportationFast();

        System.assert(requestTransportationFast1.equals(requestTransportationFast2));
        System.assert(requestTransportationFast3.equals(requestTransportationFast4));
        System.assertEquals(requestTransportationFast1.hashCode(), requestTransportationFast2.hashCode());
        System.assertEquals(requestTransportationFast3.hashCode(), requestTransportationFast4.hashCode());
    }
}
