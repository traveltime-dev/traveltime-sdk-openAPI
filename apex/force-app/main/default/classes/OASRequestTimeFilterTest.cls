@isTest
private class OASRequestTimeFilterTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = requestTimeFilter1;
        OASRequestTimeFilter requestTimeFilter3 = new OASRequestTimeFilter();
        OASRequestTimeFilter requestTimeFilter4 = requestTimeFilter3;

        System.assert(requestTimeFilter1.equals(requestTimeFilter2));
        System.assert(requestTimeFilter2.equals(requestTimeFilter1));
        System.assert(requestTimeFilter1.equals(requestTimeFilter1));
        System.assert(requestTimeFilter3.equals(requestTimeFilter4));
        System.assert(requestTimeFilter4.equals(requestTimeFilter3));
        System.assert(requestTimeFilter3.equals(requestTimeFilter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter3 = new OASRequestTimeFilter();
        OASRequestTimeFilter requestTimeFilter4 = new OASRequestTimeFilter();

        System.assert(requestTimeFilter1.equals(requestTimeFilter2));
        System.assert(requestTimeFilter2.equals(requestTimeFilter1));
        System.assert(requestTimeFilter3.equals(requestTimeFilter4));
        System.assert(requestTimeFilter4.equals(requestTimeFilter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = new OASRequestTimeFilter();

        System.assertEquals(false, requestTimeFilter1.equals('foo'));
        System.assertEquals(false, requestTimeFilter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = new OASRequestTimeFilter();
        OASRequestTimeFilter requestTimeFilter3;

        System.assertEquals(false, requestTimeFilter1.equals(requestTimeFilter3));
        System.assertEquals(false, requestTimeFilter2.equals(requestTimeFilter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = new OASRequestTimeFilter();

        System.assertEquals(requestTimeFilter1.hashCode(), requestTimeFilter1.hashCode());
        System.assertEquals(requestTimeFilter2.hashCode(), requestTimeFilter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilter requestTimeFilter1 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter2 = OASRequestTimeFilter.getExample();
        OASRequestTimeFilter requestTimeFilter3 = new OASRequestTimeFilter();
        OASRequestTimeFilter requestTimeFilter4 = new OASRequestTimeFilter();

        System.assert(requestTimeFilter1.equals(requestTimeFilter2));
        System.assert(requestTimeFilter3.equals(requestTimeFilter4));
        System.assertEquals(requestTimeFilter1.hashCode(), requestTimeFilter2.hashCode());
        System.assertEquals(requestTimeFilter3.hashCode(), requestTimeFilter4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilter requestTimeFilter = new OASRequestTimeFilter();
        Map<String, String> propertyMappings = requestTimeFilter.getPropertyMappings();
        System.assertEquals('departureSearches', propertyMappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', propertyMappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilter requestTimeFilter = new OASRequestTimeFilter();
        System.assertEquals(new List<OASRequestLocation>(), requestTimeFilter.locations);
        System.assertEquals(new List<OASRequestTimeFilterDepartureSearch>(), requestTimeFilter.departureSearches);
        System.assertEquals(new List<OASRequestTimeFilterArrivalSearch>(), requestTimeFilter.arrivalSearches);
    }
}
