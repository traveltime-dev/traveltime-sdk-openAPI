@isTest
private class OASResponseTimeFilterResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = responseTimeFilterResult1;
        OASResponseTimeFilterResult responseTimeFilterResult3 = new OASResponseTimeFilterResult();
        OASResponseTimeFilterResult responseTimeFilterResult4 = responseTimeFilterResult3;

        System.assert(responseTimeFilterResult1.equals(responseTimeFilterResult2));
        System.assert(responseTimeFilterResult2.equals(responseTimeFilterResult1));
        System.assert(responseTimeFilterResult1.equals(responseTimeFilterResult1));
        System.assert(responseTimeFilterResult3.equals(responseTimeFilterResult4));
        System.assert(responseTimeFilterResult4.equals(responseTimeFilterResult3));
        System.assert(responseTimeFilterResult3.equals(responseTimeFilterResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult3 = new OASResponseTimeFilterResult();
        OASResponseTimeFilterResult responseTimeFilterResult4 = new OASResponseTimeFilterResult();

        System.assert(responseTimeFilterResult1.equals(responseTimeFilterResult2));
        System.assert(responseTimeFilterResult2.equals(responseTimeFilterResult1));
        System.assert(responseTimeFilterResult3.equals(responseTimeFilterResult4));
        System.assert(responseTimeFilterResult4.equals(responseTimeFilterResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = new OASResponseTimeFilterResult();

        System.assertEquals(false, responseTimeFilterResult1.equals('foo'));
        System.assertEquals(false, responseTimeFilterResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = new OASResponseTimeFilterResult();
        OASResponseTimeFilterResult responseTimeFilterResult3;

        System.assertEquals(false, responseTimeFilterResult1.equals(responseTimeFilterResult3));
        System.assertEquals(false, responseTimeFilterResult2.equals(responseTimeFilterResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = new OASResponseTimeFilterResult();

        System.assertEquals(responseTimeFilterResult1.hashCode(), responseTimeFilterResult1.hashCode());
        System.assertEquals(responseTimeFilterResult2.hashCode(), responseTimeFilterResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterResult responseTimeFilterResult1 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult2 = OASResponseTimeFilterResult.getExample();
        OASResponseTimeFilterResult responseTimeFilterResult3 = new OASResponseTimeFilterResult();
        OASResponseTimeFilterResult responseTimeFilterResult4 = new OASResponseTimeFilterResult();

        System.assert(responseTimeFilterResult1.equals(responseTimeFilterResult2));
        System.assert(responseTimeFilterResult3.equals(responseTimeFilterResult4));
        System.assertEquals(responseTimeFilterResult1.hashCode(), responseTimeFilterResult2.hashCode());
        System.assertEquals(responseTimeFilterResult3.hashCode(), responseTimeFilterResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterResult responseTimeFilterResult = new OASResponseTimeFilterResult();
        Map<String, String> propertyMappings = responseTimeFilterResult.getPropertyMappings();
        System.assertEquals('searchId', propertyMappings.get('search_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterResult responseTimeFilterResult = new OASResponseTimeFilterResult();
        System.assertEquals(new List<OASResponseTimeFilterLocation>(), responseTimeFilterResult.locations);
        System.assertEquals(new List<String>(), responseTimeFilterResult.unreachable);
        System.assertEquals(null, responseTimeFilterResult.searchId);
    }
}
