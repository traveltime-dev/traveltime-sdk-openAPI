@isTest
private class OASRequestTimeFilterFastArrivalOneToTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = requestTimeFilterFastArrivalOneToManySearch1;
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch3 = new OASRequestTimeFilterFastArrivalOneTo();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch4 = requestTimeFilterFastArrivalOneToManySearch3;

        System.assert(requestTimeFilterFastArrivalOneToManySearch1.equals(requestTimeFilterFastArrivalOneToManySearch2));
        System.assert(requestTimeFilterFastArrivalOneToManySearch2.equals(requestTimeFilterFastArrivalOneToManySearch1));
        System.assert(requestTimeFilterFastArrivalOneToManySearch1.equals(requestTimeFilterFastArrivalOneToManySearch1));
        System.assert(requestTimeFilterFastArrivalOneToManySearch3.equals(requestTimeFilterFastArrivalOneToManySearch4));
        System.assert(requestTimeFilterFastArrivalOneToManySearch4.equals(requestTimeFilterFastArrivalOneToManySearch3));
        System.assert(requestTimeFilterFastArrivalOneToManySearch3.equals(requestTimeFilterFastArrivalOneToManySearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch3 = new OASRequestTimeFilterFastArrivalOneTo();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch4 = new OASRequestTimeFilterFastArrivalOneTo();

        System.assert(requestTimeFilterFastArrivalOneToManySearch1.equals(requestTimeFilterFastArrivalOneToManySearch2));
        System.assert(requestTimeFilterFastArrivalOneToManySearch2.equals(requestTimeFilterFastArrivalOneToManySearch1));
        System.assert(requestTimeFilterFastArrivalOneToManySearch3.equals(requestTimeFilterFastArrivalOneToManySearch4));
        System.assert(requestTimeFilterFastArrivalOneToManySearch4.equals(requestTimeFilterFastArrivalOneToManySearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = new OASRequestTimeFilterFastArrivalOneTo();

        System.assertEquals(false, requestTimeFilterFastArrivalOneToManySearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterFastArrivalOneToManySearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = new OASRequestTimeFilterFastArrivalOneTo();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch3;

        System.assertEquals(false, requestTimeFilterFastArrivalOneToManySearch1.equals(requestTimeFilterFastArrivalOneToManySearch3));
        System.assertEquals(false, requestTimeFilterFastArrivalOneToManySearch2.equals(requestTimeFilterFastArrivalOneToManySearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = new OASRequestTimeFilterFastArrivalOneTo();

        System.assertEquals(requestTimeFilterFastArrivalOneToManySearch1.hashCode(), requestTimeFilterFastArrivalOneToManySearch1.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalOneToManySearch2.hashCode(), requestTimeFilterFastArrivalOneToManySearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch1 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch2 = OASRequestTimeFilterFastArrivalOneTo.getExample();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch3 = new OASRequestTimeFilterFastArrivalOneTo();
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch4 = new OASRequestTimeFilterFastArrivalOneTo();

        System.assert(requestTimeFilterFastArrivalOneToManySearch1.equals(requestTimeFilterFastArrivalOneToManySearch2));
        System.assert(requestTimeFilterFastArrivalOneToManySearch3.equals(requestTimeFilterFastArrivalOneToManySearch4));
        System.assertEquals(requestTimeFilterFastArrivalOneToManySearch1.hashCode(), requestTimeFilterFastArrivalOneToManySearch2.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalOneToManySearch3.hashCode(), requestTimeFilterFastArrivalOneToManySearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch = new OASRequestTimeFilterFastArrivalOneTo();
        Map<String, String> x-property-mappings = requestTimeFilterFastArrivalOneToManySearch.getx-property-mappings();
        System.assertEquals('departureLocationId', x-property-mappings.get('departure_location_id'));
        System.assertEquals('arrivalLocationIds', x-property-mappings.get('arrival_location_ids'));
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('arrivalTimePeriod', x-property-mappings.get('arrival_time_period'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterFastArrivalOneTo requestTimeFilterFastArrivalOneToManySearch = new OASRequestTimeFilterFastArrivalOneTo();
        System.assertEquals(new List<String>(), requestTimeFilterFastArrivalOneToManySearch.arrivalLocationIds);
        System.assertEquals(new List<OASRequestTimeFilterFastProperty>(), requestTimeFilterFastArrivalOneToManySearch.properties);
        System.assertEquals(null, requestTimeFilterFastArrivalOneToManySearch.id);
        System.assertEquals(null, requestTimeFilterFastArrivalOneToManySearch.departureLocationId);
        System.assertEquals(null, requestTimeFilterFastArrivalOneToManySearch.transportation);
        System.assertEquals(null, requestTimeFilterFastArrivalOneToManySearch.travelTime);
        System.assertEquals(null, requestTimeFilterFastArrivalOneToManySearch.arrivalTimePeriod);
    }
}
