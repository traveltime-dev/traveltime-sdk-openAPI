@isTest
private class OASRequestRoutesArrivalSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = requestRoutesArrivalSearch1;
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch3 = new OASRequestRoutesArrivalSearch();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch4 = requestRoutesArrivalSearch3;

        System.assert(requestRoutesArrivalSearch1.equals(requestRoutesArrivalSearch2));
        System.assert(requestRoutesArrivalSearch2.equals(requestRoutesArrivalSearch1));
        System.assert(requestRoutesArrivalSearch1.equals(requestRoutesArrivalSearch1));
        System.assert(requestRoutesArrivalSearch3.equals(requestRoutesArrivalSearch4));
        System.assert(requestRoutesArrivalSearch4.equals(requestRoutesArrivalSearch3));
        System.assert(requestRoutesArrivalSearch3.equals(requestRoutesArrivalSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch3 = new OASRequestRoutesArrivalSearch();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch4 = new OASRequestRoutesArrivalSearch();

        System.assert(requestRoutesArrivalSearch1.equals(requestRoutesArrivalSearch2));
        System.assert(requestRoutesArrivalSearch2.equals(requestRoutesArrivalSearch1));
        System.assert(requestRoutesArrivalSearch3.equals(requestRoutesArrivalSearch4));
        System.assert(requestRoutesArrivalSearch4.equals(requestRoutesArrivalSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = new OASRequestRoutesArrivalSearch();

        System.assertEquals(false, requestRoutesArrivalSearch1.equals('foo'));
        System.assertEquals(false, requestRoutesArrivalSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = new OASRequestRoutesArrivalSearch();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch3;

        System.assertEquals(false, requestRoutesArrivalSearch1.equals(requestRoutesArrivalSearch3));
        System.assertEquals(false, requestRoutesArrivalSearch2.equals(requestRoutesArrivalSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = new OASRequestRoutesArrivalSearch();

        System.assertEquals(requestRoutesArrivalSearch1.hashCode(), requestRoutesArrivalSearch1.hashCode());
        System.assertEquals(requestRoutesArrivalSearch2.hashCode(), requestRoutesArrivalSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch1 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch2 = OASRequestRoutesArrivalSearch.getExample();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch3 = new OASRequestRoutesArrivalSearch();
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch4 = new OASRequestRoutesArrivalSearch();

        System.assert(requestRoutesArrivalSearch1.equals(requestRoutesArrivalSearch2));
        System.assert(requestRoutesArrivalSearch3.equals(requestRoutesArrivalSearch4));
        System.assertEquals(requestRoutesArrivalSearch1.hashCode(), requestRoutesArrivalSearch2.hashCode());
        System.assertEquals(requestRoutesArrivalSearch3.hashCode(), requestRoutesArrivalSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch = new OASRequestRoutesArrivalSearch();
        Map<String, String> x-property-mappings = requestRoutesArrivalSearch.getx-property-mappings();
        System.assertEquals('departureLocationIds', x-property-mappings.get('departure_location_ids'));
        System.assertEquals('arrivalLocationId', x-property-mappings.get('arrival_location_id'));
        System.assertEquals('arrivalTime', x-property-mappings.get('arrival_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestRoutesArrivalSearch requestRoutesArrivalSearch = new OASRequestRoutesArrivalSearch();
        System.assertEquals(new List<String>(), requestRoutesArrivalSearch.departureLocationIds);
        System.assertEquals(new List<OASRequestRoutesProperty>(), requestRoutesArrivalSearch.properties);
        System.assertEquals(null, requestRoutesArrivalSearch.id);
        System.assertEquals(null, requestRoutesArrivalSearch.arrivalLocationId);
        System.assertEquals(null, requestRoutesArrivalSearch.transportation);
        System.assertEquals(null, requestRoutesArrivalSearch.arrivalTime);
        System.assertEquals(null, requestRoutesArrivalSearch.range);
    }
}
