@isTest
private class OASResponseTimeFilterTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = responseTimeFilter1;
        OASResponseTimeFilter responseTimeFilter3 = new OASResponseTimeFilter();
        OASResponseTimeFilter responseTimeFilter4 = responseTimeFilter3;

        System.assert(responseTimeFilter1.equals(responseTimeFilter2));
        System.assert(responseTimeFilter2.equals(responseTimeFilter1));
        System.assert(responseTimeFilter1.equals(responseTimeFilter1));
        System.assert(responseTimeFilter3.equals(responseTimeFilter4));
        System.assert(responseTimeFilter4.equals(responseTimeFilter3));
        System.assert(responseTimeFilter3.equals(responseTimeFilter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter3 = new OASResponseTimeFilter();
        OASResponseTimeFilter responseTimeFilter4 = new OASResponseTimeFilter();

        System.assert(responseTimeFilter1.equals(responseTimeFilter2));
        System.assert(responseTimeFilter2.equals(responseTimeFilter1));
        System.assert(responseTimeFilter3.equals(responseTimeFilter4));
        System.assert(responseTimeFilter4.equals(responseTimeFilter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = new OASResponseTimeFilter();

        System.assertEquals(false, responseTimeFilter1.equals('foo'));
        System.assertEquals(false, responseTimeFilter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = new OASResponseTimeFilter();
        OASResponseTimeFilter responseTimeFilter3;

        System.assertEquals(false, responseTimeFilter1.equals(responseTimeFilter3));
        System.assertEquals(false, responseTimeFilter2.equals(responseTimeFilter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = new OASResponseTimeFilter();

        System.assertEquals(responseTimeFilter1.hashCode(), responseTimeFilter1.hashCode());
        System.assertEquals(responseTimeFilter2.hashCode(), responseTimeFilter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilter responseTimeFilter1 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter2 = OASResponseTimeFilter.getExample();
        OASResponseTimeFilter responseTimeFilter3 = new OASResponseTimeFilter();
        OASResponseTimeFilter responseTimeFilter4 = new OASResponseTimeFilter();

        System.assert(responseTimeFilter1.equals(responseTimeFilter2));
        System.assert(responseTimeFilter3.equals(responseTimeFilter4));
        System.assertEquals(responseTimeFilter1.hashCode(), responseTimeFilter2.hashCode());
        System.assertEquals(responseTimeFilter3.hashCode(), responseTimeFilter4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilter responseTimeFilter = new OASResponseTimeFilter();
        System.assertEquals(new List<OASResponseTimeFilterResult>(), responseTimeFilter.results);
    }
}
