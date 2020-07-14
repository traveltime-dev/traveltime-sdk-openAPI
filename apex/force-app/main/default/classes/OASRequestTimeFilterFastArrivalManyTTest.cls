@isTest
private class OASRequestTimeFilterFastArrivalManyTTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = requestTimeFilterFastArrivalManyToOneSearch1;
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch3 = new OASRequestTimeFilterFastArrivalManyT();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch4 = requestTimeFilterFastArrivalManyToOneSearch3;

        System.assert(requestTimeFilterFastArrivalManyToOneSearch1.equals(requestTimeFilterFastArrivalManyToOneSearch2));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch2.equals(requestTimeFilterFastArrivalManyToOneSearch1));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch1.equals(requestTimeFilterFastArrivalManyToOneSearch1));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch3.equals(requestTimeFilterFastArrivalManyToOneSearch4));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch4.equals(requestTimeFilterFastArrivalManyToOneSearch3));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch3.equals(requestTimeFilterFastArrivalManyToOneSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch3 = new OASRequestTimeFilterFastArrivalManyT();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch4 = new OASRequestTimeFilterFastArrivalManyT();

        System.assert(requestTimeFilterFastArrivalManyToOneSearch1.equals(requestTimeFilterFastArrivalManyToOneSearch2));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch2.equals(requestTimeFilterFastArrivalManyToOneSearch1));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch3.equals(requestTimeFilterFastArrivalManyToOneSearch4));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch4.equals(requestTimeFilterFastArrivalManyToOneSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = new OASRequestTimeFilterFastArrivalManyT();

        System.assertEquals(false, requestTimeFilterFastArrivalManyToOneSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterFastArrivalManyToOneSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = new OASRequestTimeFilterFastArrivalManyT();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch3;

        System.assertEquals(false, requestTimeFilterFastArrivalManyToOneSearch1.equals(requestTimeFilterFastArrivalManyToOneSearch3));
        System.assertEquals(false, requestTimeFilterFastArrivalManyToOneSearch2.equals(requestTimeFilterFastArrivalManyToOneSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = new OASRequestTimeFilterFastArrivalManyT();

        System.assertEquals(requestTimeFilterFastArrivalManyToOneSearch1.hashCode(), requestTimeFilterFastArrivalManyToOneSearch1.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalManyToOneSearch2.hashCode(), requestTimeFilterFastArrivalManyToOneSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch1 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch2 = OASRequestTimeFilterFastArrivalManyT.getExample();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch3 = new OASRequestTimeFilterFastArrivalManyT();
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch4 = new OASRequestTimeFilterFastArrivalManyT();

        System.assert(requestTimeFilterFastArrivalManyToOneSearch1.equals(requestTimeFilterFastArrivalManyToOneSearch2));
        System.assert(requestTimeFilterFastArrivalManyToOneSearch3.equals(requestTimeFilterFastArrivalManyToOneSearch4));
        System.assertEquals(requestTimeFilterFastArrivalManyToOneSearch1.hashCode(), requestTimeFilterFastArrivalManyToOneSearch2.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalManyToOneSearch3.hashCode(), requestTimeFilterFastArrivalManyToOneSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch = new OASRequestTimeFilterFastArrivalManyT();
        Map<String, String> x-property-mappings = requestTimeFilterFastArrivalManyToOneSearch.getx-property-mappings();
        System.assertEquals('arrivalLocationId', x-property-mappings.get('arrival_location_id'));
        System.assertEquals('departureLocationIds', x-property-mappings.get('departure_location_ids'));
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('arrivalTimePeriod', x-property-mappings.get('arrival_time_period'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch = new OASRequestTimeFilterFastArrivalManyT();
        System.assertEquals(new List<String>(), requestTimeFilterFastArrivalManyToOneSearch.departureLocationIds);
        System.assertEquals(new List<OASRequestTimeFilterFastProperty>(), requestTimeFilterFastArrivalManyToOneSearch.properties);
        System.assertEquals(null, requestTimeFilterFastArrivalManyToOneSearch.id);
        System.assertEquals(null, requestTimeFilterFastArrivalManyToOneSearch.arrivalLocationId);
        System.assertEquals(null, requestTimeFilterFastArrivalManyToOneSearch.transportation);
        System.assertEquals(null, requestTimeFilterFastArrivalManyToOneSearch.travelTime);
        System.assertEquals(null, requestTimeFilterFastArrivalManyToOneSearch.arrivalTimePeriod);
    }
}
