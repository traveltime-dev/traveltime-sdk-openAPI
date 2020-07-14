@isTest
private class OASRequestTimeFilterFastArrivalSearcTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = requestTimeFilterFastArrivalSearches1;
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches3 = new OASRequestTimeFilterFastArrivalSearc();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches4 = requestTimeFilterFastArrivalSearches3;

        System.assert(requestTimeFilterFastArrivalSearches1.equals(requestTimeFilterFastArrivalSearches2));
        System.assert(requestTimeFilterFastArrivalSearches2.equals(requestTimeFilterFastArrivalSearches1));
        System.assert(requestTimeFilterFastArrivalSearches1.equals(requestTimeFilterFastArrivalSearches1));
        System.assert(requestTimeFilterFastArrivalSearches3.equals(requestTimeFilterFastArrivalSearches4));
        System.assert(requestTimeFilterFastArrivalSearches4.equals(requestTimeFilterFastArrivalSearches3));
        System.assert(requestTimeFilterFastArrivalSearches3.equals(requestTimeFilterFastArrivalSearches3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches3 = new OASRequestTimeFilterFastArrivalSearc();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches4 = new OASRequestTimeFilterFastArrivalSearc();

        System.assert(requestTimeFilterFastArrivalSearches1.equals(requestTimeFilterFastArrivalSearches2));
        System.assert(requestTimeFilterFastArrivalSearches2.equals(requestTimeFilterFastArrivalSearches1));
        System.assert(requestTimeFilterFastArrivalSearches3.equals(requestTimeFilterFastArrivalSearches4));
        System.assert(requestTimeFilterFastArrivalSearches4.equals(requestTimeFilterFastArrivalSearches3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = new OASRequestTimeFilterFastArrivalSearc();

        System.assertEquals(false, requestTimeFilterFastArrivalSearches1.equals('foo'));
        System.assertEquals(false, requestTimeFilterFastArrivalSearches2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = new OASRequestTimeFilterFastArrivalSearc();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches3;

        System.assertEquals(false, requestTimeFilterFastArrivalSearches1.equals(requestTimeFilterFastArrivalSearches3));
        System.assertEquals(false, requestTimeFilterFastArrivalSearches2.equals(requestTimeFilterFastArrivalSearches3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = new OASRequestTimeFilterFastArrivalSearc();

        System.assertEquals(requestTimeFilterFastArrivalSearches1.hashCode(), requestTimeFilterFastArrivalSearches1.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalSearches2.hashCode(), requestTimeFilterFastArrivalSearches2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches1 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches2 = OASRequestTimeFilterFastArrivalSearc.getExample();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches3 = new OASRequestTimeFilterFastArrivalSearc();
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches4 = new OASRequestTimeFilterFastArrivalSearc();

        System.assert(requestTimeFilterFastArrivalSearches1.equals(requestTimeFilterFastArrivalSearches2));
        System.assert(requestTimeFilterFastArrivalSearches3.equals(requestTimeFilterFastArrivalSearches4));
        System.assertEquals(requestTimeFilterFastArrivalSearches1.hashCode(), requestTimeFilterFastArrivalSearches2.hashCode());
        System.assertEquals(requestTimeFilterFastArrivalSearches3.hashCode(), requestTimeFilterFastArrivalSearches4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches = new OASRequestTimeFilterFastArrivalSearc();
        Map<String, String> x-property-mappings = requestTimeFilterFastArrivalSearches.getx-property-mappings();
        System.assertEquals('manyToOne', x-property-mappings.get('many_to_one'));
        System.assertEquals('oneToMany', x-property-mappings.get('one_to_many'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterFastArrivalSearc requestTimeFilterFastArrivalSearches = new OASRequestTimeFilterFastArrivalSearc();
        System.assertEquals(new List<OASRequestTimeFilterFastArrivalManyT>(), requestTimeFilterFastArrivalSearches.manyToOne);
        System.assertEquals(new List<OASRequestTimeFilterFastArrivalOneTo>(), requestTimeFilterFastArrivalSearches.oneToMany);
    }
}
