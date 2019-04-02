@isTest
private class OASRequestTransportationTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = requestTransportation1;
        OASRequestTransportation requestTransportation3 = new OASRequestTransportation();
        OASRequestTransportation requestTransportation4 = requestTransportation3;

        System.assert(requestTransportation1.equals(requestTransportation2));
        System.assert(requestTransportation2.equals(requestTransportation1));
        System.assert(requestTransportation1.equals(requestTransportation1));
        System.assert(requestTransportation3.equals(requestTransportation4));
        System.assert(requestTransportation4.equals(requestTransportation3));
        System.assert(requestTransportation3.equals(requestTransportation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation3 = new OASRequestTransportation();
        OASRequestTransportation requestTransportation4 = new OASRequestTransportation();

        System.assert(requestTransportation1.equals(requestTransportation2));
        System.assert(requestTransportation2.equals(requestTransportation1));
        System.assert(requestTransportation3.equals(requestTransportation4));
        System.assert(requestTransportation4.equals(requestTransportation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = new OASRequestTransportation();

        System.assertEquals(false, requestTransportation1.equals('foo'));
        System.assertEquals(false, requestTransportation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = new OASRequestTransportation();
        OASRequestTransportation requestTransportation3;

        System.assertEquals(false, requestTransportation1.equals(requestTransportation3));
        System.assertEquals(false, requestTransportation2.equals(requestTransportation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = new OASRequestTransportation();

        System.assertEquals(requestTransportation1.hashCode(), requestTransportation1.hashCode());
        System.assertEquals(requestTransportation2.hashCode(), requestTransportation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTransportation requestTransportation1 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation2 = OASRequestTransportation.getExample();
        OASRequestTransportation requestTransportation3 = new OASRequestTransportation();
        OASRequestTransportation requestTransportation4 = new OASRequestTransportation();

        System.assert(requestTransportation1.equals(requestTransportation2));
        System.assert(requestTransportation3.equals(requestTransportation4));
        System.assertEquals(requestTransportation1.hashCode(), requestTransportation2.hashCode());
        System.assertEquals(requestTransportation3.hashCode(), requestTransportation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTransportation requestTransportation = new OASRequestTransportation();
        Map<String, String> propertyMappings = requestTransportation.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('ptChangeDelay', propertyMappings.get('pt_change_delay'));
        System.assertEquals('walkingTime', propertyMappings.get('walking_time'));
        System.assertEquals('drivingTimeToStation', propertyMappings.get('driving_time_to_station'));
        System.assertEquals('parkingTime', propertyMappings.get('parking_time'));
        System.assertEquals('boardingTime', propertyMappings.get('boarding_time'));
    }
}
