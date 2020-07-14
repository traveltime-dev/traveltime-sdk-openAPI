@isTest
private class OASRequestRoutesDepartureSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = requestRoutesDepartureSearch1;
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch3 = new OASRequestRoutesDepartureSearch();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch4 = requestRoutesDepartureSearch3;

        System.assert(requestRoutesDepartureSearch1.equals(requestRoutesDepartureSearch2));
        System.assert(requestRoutesDepartureSearch2.equals(requestRoutesDepartureSearch1));
        System.assert(requestRoutesDepartureSearch1.equals(requestRoutesDepartureSearch1));
        System.assert(requestRoutesDepartureSearch3.equals(requestRoutesDepartureSearch4));
        System.assert(requestRoutesDepartureSearch4.equals(requestRoutesDepartureSearch3));
        System.assert(requestRoutesDepartureSearch3.equals(requestRoutesDepartureSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch3 = new OASRequestRoutesDepartureSearch();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch4 = new OASRequestRoutesDepartureSearch();

        System.assert(requestRoutesDepartureSearch1.equals(requestRoutesDepartureSearch2));
        System.assert(requestRoutesDepartureSearch2.equals(requestRoutesDepartureSearch1));
        System.assert(requestRoutesDepartureSearch3.equals(requestRoutesDepartureSearch4));
        System.assert(requestRoutesDepartureSearch4.equals(requestRoutesDepartureSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = new OASRequestRoutesDepartureSearch();

        System.assertEquals(false, requestRoutesDepartureSearch1.equals('foo'));
        System.assertEquals(false, requestRoutesDepartureSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = new OASRequestRoutesDepartureSearch();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch3;

        System.assertEquals(false, requestRoutesDepartureSearch1.equals(requestRoutesDepartureSearch3));
        System.assertEquals(false, requestRoutesDepartureSearch2.equals(requestRoutesDepartureSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = new OASRequestRoutesDepartureSearch();

        System.assertEquals(requestRoutesDepartureSearch1.hashCode(), requestRoutesDepartureSearch1.hashCode());
        System.assertEquals(requestRoutesDepartureSearch2.hashCode(), requestRoutesDepartureSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch1 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch2 = OASRequestRoutesDepartureSearch.getExample();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch3 = new OASRequestRoutesDepartureSearch();
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch4 = new OASRequestRoutesDepartureSearch();

        System.assert(requestRoutesDepartureSearch1.equals(requestRoutesDepartureSearch2));
        System.assert(requestRoutesDepartureSearch3.equals(requestRoutesDepartureSearch4));
        System.assertEquals(requestRoutesDepartureSearch1.hashCode(), requestRoutesDepartureSearch2.hashCode());
        System.assertEquals(requestRoutesDepartureSearch3.hashCode(), requestRoutesDepartureSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch = new OASRequestRoutesDepartureSearch();
        Map<String, String> x-property-mappings = requestRoutesDepartureSearch.getx-property-mappings();
        System.assertEquals('departureLocationId', x-property-mappings.get('departure_location_id'));
        System.assertEquals('arrivalLocationIds', x-property-mappings.get('arrival_location_ids'));
        System.assertEquals('departureTime', x-property-mappings.get('departure_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestRoutesDepartureSearch requestRoutesDepartureSearch = new OASRequestRoutesDepartureSearch();
        System.assertEquals(new List<String>(), requestRoutesDepartureSearch.arrivalLocationIds);
        System.assertEquals(new List<OASRequestRoutesProperty>(), requestRoutesDepartureSearch.properties);
        System.assertEquals(null, requestRoutesDepartureSearch.id);
        System.assertEquals(null, requestRoutesDepartureSearch.departureLocationId);
        System.assertEquals(null, requestRoutesDepartureSearch.transportation);
        System.assertEquals(null, requestRoutesDepartureSearch.departureTime);
        System.assertEquals(null, requestRoutesDepartureSearch.range);
    }
}
