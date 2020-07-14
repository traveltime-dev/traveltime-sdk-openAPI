@isTest
private class OASRequestTimeFilterPostcodesArrivalTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = requestTimeFilterPostcodesArrivalSearch1;
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch3 = new OASRequestTimeFilterPostcodesArrival();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch4 = requestTimeFilterPostcodesArrivalSearch3;

        System.assert(requestTimeFilterPostcodesArrivalSearch1.equals(requestTimeFilterPostcodesArrivalSearch2));
        System.assert(requestTimeFilterPostcodesArrivalSearch2.equals(requestTimeFilterPostcodesArrivalSearch1));
        System.assert(requestTimeFilterPostcodesArrivalSearch1.equals(requestTimeFilterPostcodesArrivalSearch1));
        System.assert(requestTimeFilterPostcodesArrivalSearch3.equals(requestTimeFilterPostcodesArrivalSearch4));
        System.assert(requestTimeFilterPostcodesArrivalSearch4.equals(requestTimeFilterPostcodesArrivalSearch3));
        System.assert(requestTimeFilterPostcodesArrivalSearch3.equals(requestTimeFilterPostcodesArrivalSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch3 = new OASRequestTimeFilterPostcodesArrival();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch4 = new OASRequestTimeFilterPostcodesArrival();

        System.assert(requestTimeFilterPostcodesArrivalSearch1.equals(requestTimeFilterPostcodesArrivalSearch2));
        System.assert(requestTimeFilterPostcodesArrivalSearch2.equals(requestTimeFilterPostcodesArrivalSearch1));
        System.assert(requestTimeFilterPostcodesArrivalSearch3.equals(requestTimeFilterPostcodesArrivalSearch4));
        System.assert(requestTimeFilterPostcodesArrivalSearch4.equals(requestTimeFilterPostcodesArrivalSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = new OASRequestTimeFilterPostcodesArrival();

        System.assertEquals(false, requestTimeFilterPostcodesArrivalSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodesArrivalSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = new OASRequestTimeFilterPostcodesArrival();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch3;

        System.assertEquals(false, requestTimeFilterPostcodesArrivalSearch1.equals(requestTimeFilterPostcodesArrivalSearch3));
        System.assertEquals(false, requestTimeFilterPostcodesArrivalSearch2.equals(requestTimeFilterPostcodesArrivalSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = new OASRequestTimeFilterPostcodesArrival();

        System.assertEquals(requestTimeFilterPostcodesArrivalSearch1.hashCode(), requestTimeFilterPostcodesArrivalSearch1.hashCode());
        System.assertEquals(requestTimeFilterPostcodesArrivalSearch2.hashCode(), requestTimeFilterPostcodesArrivalSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch1 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch2 = OASRequestTimeFilterPostcodesArrival.getExample();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch3 = new OASRequestTimeFilterPostcodesArrival();
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch4 = new OASRequestTimeFilterPostcodesArrival();

        System.assert(requestTimeFilterPostcodesArrivalSearch1.equals(requestTimeFilterPostcodesArrivalSearch2));
        System.assert(requestTimeFilterPostcodesArrivalSearch3.equals(requestTimeFilterPostcodesArrivalSearch4));
        System.assertEquals(requestTimeFilterPostcodesArrivalSearch1.hashCode(), requestTimeFilterPostcodesArrivalSearch2.hashCode());
        System.assertEquals(requestTimeFilterPostcodesArrivalSearch3.hashCode(), requestTimeFilterPostcodesArrivalSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch = new OASRequestTimeFilterPostcodesArrival();
        Map<String, String> x-property-mappings = requestTimeFilterPostcodesArrivalSearch.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('arrivalTime', x-property-mappings.get('arrival_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodesArrival requestTimeFilterPostcodesArrivalSearch = new OASRequestTimeFilterPostcodesArrival();
        System.assertEquals(new List<OASRequestTimeFilterPostcodesPropert>(), requestTimeFilterPostcodesArrivalSearch.properties);
        System.assertEquals(null, requestTimeFilterPostcodesArrivalSearch.id);
        System.assertEquals(null, requestTimeFilterPostcodesArrivalSearch.transportation);
        System.assertEquals(null, requestTimeFilterPostcodesArrivalSearch.travelTime);
        System.assertEquals(null, requestTimeFilterPostcodesArrivalSearch.arrivalTime);
        System.assertEquals(null, requestTimeFilterPostcodesArrivalSearch.range);
    }
}
