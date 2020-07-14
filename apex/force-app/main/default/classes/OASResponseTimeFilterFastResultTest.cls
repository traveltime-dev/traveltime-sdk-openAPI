@isTest
private class OASResponseTimeFilterFastResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = responseTimeFilterFastResult1;
        OASResponseTimeFilterFastResult responseTimeFilterFastResult3 = new OASResponseTimeFilterFastResult();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult4 = responseTimeFilterFastResult3;

        System.assert(responseTimeFilterFastResult1.equals(responseTimeFilterFastResult2));
        System.assert(responseTimeFilterFastResult2.equals(responseTimeFilterFastResult1));
        System.assert(responseTimeFilterFastResult1.equals(responseTimeFilterFastResult1));
        System.assert(responseTimeFilterFastResult3.equals(responseTimeFilterFastResult4));
        System.assert(responseTimeFilterFastResult4.equals(responseTimeFilterFastResult3));
        System.assert(responseTimeFilterFastResult3.equals(responseTimeFilterFastResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult3 = new OASResponseTimeFilterFastResult();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult4 = new OASResponseTimeFilterFastResult();

        System.assert(responseTimeFilterFastResult1.equals(responseTimeFilterFastResult2));
        System.assert(responseTimeFilterFastResult2.equals(responseTimeFilterFastResult1));
        System.assert(responseTimeFilterFastResult3.equals(responseTimeFilterFastResult4));
        System.assert(responseTimeFilterFastResult4.equals(responseTimeFilterFastResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = new OASResponseTimeFilterFastResult();

        System.assertEquals(false, responseTimeFilterFastResult1.equals('foo'));
        System.assertEquals(false, responseTimeFilterFastResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = new OASResponseTimeFilterFastResult();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult3;

        System.assertEquals(false, responseTimeFilterFastResult1.equals(responseTimeFilterFastResult3));
        System.assertEquals(false, responseTimeFilterFastResult2.equals(responseTimeFilterFastResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = new OASResponseTimeFilterFastResult();

        System.assertEquals(responseTimeFilterFastResult1.hashCode(), responseTimeFilterFastResult1.hashCode());
        System.assertEquals(responseTimeFilterFastResult2.hashCode(), responseTimeFilterFastResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult1 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult2 = OASResponseTimeFilterFastResult.getExample();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult3 = new OASResponseTimeFilterFastResult();
        OASResponseTimeFilterFastResult responseTimeFilterFastResult4 = new OASResponseTimeFilterFastResult();

        System.assert(responseTimeFilterFastResult1.equals(responseTimeFilterFastResult2));
        System.assert(responseTimeFilterFastResult3.equals(responseTimeFilterFastResult4));
        System.assertEquals(responseTimeFilterFastResult1.hashCode(), responseTimeFilterFastResult2.hashCode());
        System.assertEquals(responseTimeFilterFastResult3.hashCode(), responseTimeFilterFastResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult = new OASResponseTimeFilterFastResult();
        Map<String, String> x-property-mappings = responseTimeFilterFastResult.getx-property-mappings();
        System.assertEquals('searchId', x-property-mappings.get('search_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterFastResult responseTimeFilterFastResult = new OASResponseTimeFilterFastResult();
        System.assertEquals(new List<OASResponseTimeFilterFastLocation>(), responseTimeFilterFastResult.locations);
        System.assertEquals(new List<String>(), responseTimeFilterFastResult.unreachable);
        System.assertEquals(null, responseTimeFilterFastResult.searchId);
    }
}
