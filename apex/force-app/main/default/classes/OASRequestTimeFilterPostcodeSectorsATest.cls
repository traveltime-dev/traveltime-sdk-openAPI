@isTest
private class OASRequestTimeFilterPostcodeSectorsATest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = requestTimeFilterPostcodeSectorsArrivalSearch1;
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch3 = new OASRequestTimeFilterPostcodeSectorsA();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch4 = requestTimeFilterPostcodeSectorsArrivalSearch3;

        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch1.equals(requestTimeFilterPostcodeSectorsArrivalSearch2));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch2.equals(requestTimeFilterPostcodeSectorsArrivalSearch1));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch1.equals(requestTimeFilterPostcodeSectorsArrivalSearch1));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch3.equals(requestTimeFilterPostcodeSectorsArrivalSearch4));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch4.equals(requestTimeFilterPostcodeSectorsArrivalSearch3));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch3.equals(requestTimeFilterPostcodeSectorsArrivalSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch3 = new OASRequestTimeFilterPostcodeSectorsA();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch4 = new OASRequestTimeFilterPostcodeSectorsA();

        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch1.equals(requestTimeFilterPostcodeSectorsArrivalSearch2));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch2.equals(requestTimeFilterPostcodeSectorsArrivalSearch1));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch3.equals(requestTimeFilterPostcodeSectorsArrivalSearch4));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch4.equals(requestTimeFilterPostcodeSectorsArrivalSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = new OASRequestTimeFilterPostcodeSectorsA();

        System.assertEquals(false, requestTimeFilterPostcodeSectorsArrivalSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodeSectorsArrivalSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = new OASRequestTimeFilterPostcodeSectorsA();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch3;

        System.assertEquals(false, requestTimeFilterPostcodeSectorsArrivalSearch1.equals(requestTimeFilterPostcodeSectorsArrivalSearch3));
        System.assertEquals(false, requestTimeFilterPostcodeSectorsArrivalSearch2.equals(requestTimeFilterPostcodeSectorsArrivalSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = new OASRequestTimeFilterPostcodeSectorsA();

        System.assertEquals(requestTimeFilterPostcodeSectorsArrivalSearch1.hashCode(), requestTimeFilterPostcodeSectorsArrivalSearch1.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectorsArrivalSearch2.hashCode(), requestTimeFilterPostcodeSectorsArrivalSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch1 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch2 = OASRequestTimeFilterPostcodeSectorsA.getExample();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch3 = new OASRequestTimeFilterPostcodeSectorsA();
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch4 = new OASRequestTimeFilterPostcodeSectorsA();

        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch1.equals(requestTimeFilterPostcodeSectorsArrivalSearch2));
        System.assert(requestTimeFilterPostcodeSectorsArrivalSearch3.equals(requestTimeFilterPostcodeSectorsArrivalSearch4));
        System.assertEquals(requestTimeFilterPostcodeSectorsArrivalSearch1.hashCode(), requestTimeFilterPostcodeSectorsArrivalSearch2.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectorsArrivalSearch3.hashCode(), requestTimeFilterPostcodeSectorsArrivalSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch = new OASRequestTimeFilterPostcodeSectorsA();
        Map<String, String> propertyMappings = requestTimeFilterPostcodeSectorsArrivalSearch.getPropertyMappings();
        System.assertEquals('travelTime', propertyMappings.get('travel_time'));
        System.assertEquals('arrivalTime', propertyMappings.get('arrival_time'));
        System.assertEquals('reachablePostcodesThreshold', propertyMappings.get('reachable_postcodes_threshold'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodeSectorsA requestTimeFilterPostcodeSectorsArrivalSearch = new OASRequestTimeFilterPostcodeSectorsA();
        System.assertEquals(new List<OASRequestTimeFilterPostcodeSectorsP>(), requestTimeFilterPostcodeSectorsArrivalSearch.properties);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.id);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.transportation);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.travelTime);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.arrivalTime);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.reachablePostcodesThreshold);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsArrivalSearch.range);
    }
}
