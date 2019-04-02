@isTest
private class OASResponseRoutesResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = responseRoutesResult1;
        OASResponseRoutesResult responseRoutesResult3 = new OASResponseRoutesResult();
        OASResponseRoutesResult responseRoutesResult4 = responseRoutesResult3;

        System.assert(responseRoutesResult1.equals(responseRoutesResult2));
        System.assert(responseRoutesResult2.equals(responseRoutesResult1));
        System.assert(responseRoutesResult1.equals(responseRoutesResult1));
        System.assert(responseRoutesResult3.equals(responseRoutesResult4));
        System.assert(responseRoutesResult4.equals(responseRoutesResult3));
        System.assert(responseRoutesResult3.equals(responseRoutesResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult3 = new OASResponseRoutesResult();
        OASResponseRoutesResult responseRoutesResult4 = new OASResponseRoutesResult();

        System.assert(responseRoutesResult1.equals(responseRoutesResult2));
        System.assert(responseRoutesResult2.equals(responseRoutesResult1));
        System.assert(responseRoutesResult3.equals(responseRoutesResult4));
        System.assert(responseRoutesResult4.equals(responseRoutesResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = new OASResponseRoutesResult();

        System.assertEquals(false, responseRoutesResult1.equals('foo'));
        System.assertEquals(false, responseRoutesResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = new OASResponseRoutesResult();
        OASResponseRoutesResult responseRoutesResult3;

        System.assertEquals(false, responseRoutesResult1.equals(responseRoutesResult3));
        System.assertEquals(false, responseRoutesResult2.equals(responseRoutesResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = new OASResponseRoutesResult();

        System.assertEquals(responseRoutesResult1.hashCode(), responseRoutesResult1.hashCode());
        System.assertEquals(responseRoutesResult2.hashCode(), responseRoutesResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoutesResult responseRoutesResult1 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult2 = OASResponseRoutesResult.getExample();
        OASResponseRoutesResult responseRoutesResult3 = new OASResponseRoutesResult();
        OASResponseRoutesResult responseRoutesResult4 = new OASResponseRoutesResult();

        System.assert(responseRoutesResult1.equals(responseRoutesResult2));
        System.assert(responseRoutesResult3.equals(responseRoutesResult4));
        System.assertEquals(responseRoutesResult1.hashCode(), responseRoutesResult2.hashCode());
        System.assertEquals(responseRoutesResult3.hashCode(), responseRoutesResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseRoutesResult responseRoutesResult = new OASResponseRoutesResult();
        Map<String, String> propertyMappings = responseRoutesResult.getPropertyMappings();
        System.assertEquals('searchId', propertyMappings.get('search_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseRoutesResult responseRoutesResult = new OASResponseRoutesResult();
        System.assertEquals(new List<OASResponseRoutesLocation>(), responseRoutesResult.locations);
        System.assertEquals(new List<String>(), responseRoutesResult.unreachable);
        System.assertEquals(null, responseRoutesResult.searchId);
    }
}
