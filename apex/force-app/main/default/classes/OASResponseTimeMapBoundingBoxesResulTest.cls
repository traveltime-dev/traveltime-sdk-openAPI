@isTest
private class OASResponseTimeMapBoundingBoxesResulTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = responseTimeMapBoundingBoxesResult1;
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult3 = new OASResponseTimeMapBoundingBoxesResul();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult4 = responseTimeMapBoundingBoxesResult3;

        System.assert(responseTimeMapBoundingBoxesResult1.equals(responseTimeMapBoundingBoxesResult2));
        System.assert(responseTimeMapBoundingBoxesResult2.equals(responseTimeMapBoundingBoxesResult1));
        System.assert(responseTimeMapBoundingBoxesResult1.equals(responseTimeMapBoundingBoxesResult1));
        System.assert(responseTimeMapBoundingBoxesResult3.equals(responseTimeMapBoundingBoxesResult4));
        System.assert(responseTimeMapBoundingBoxesResult4.equals(responseTimeMapBoundingBoxesResult3));
        System.assert(responseTimeMapBoundingBoxesResult3.equals(responseTimeMapBoundingBoxesResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult3 = new OASResponseTimeMapBoundingBoxesResul();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult4 = new OASResponseTimeMapBoundingBoxesResul();

        System.assert(responseTimeMapBoundingBoxesResult1.equals(responseTimeMapBoundingBoxesResult2));
        System.assert(responseTimeMapBoundingBoxesResult2.equals(responseTimeMapBoundingBoxesResult1));
        System.assert(responseTimeMapBoundingBoxesResult3.equals(responseTimeMapBoundingBoxesResult4));
        System.assert(responseTimeMapBoundingBoxesResult4.equals(responseTimeMapBoundingBoxesResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = new OASResponseTimeMapBoundingBoxesResul();

        System.assertEquals(false, responseTimeMapBoundingBoxesResult1.equals('foo'));
        System.assertEquals(false, responseTimeMapBoundingBoxesResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = new OASResponseTimeMapBoundingBoxesResul();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult3;

        System.assertEquals(false, responseTimeMapBoundingBoxesResult1.equals(responseTimeMapBoundingBoxesResult3));
        System.assertEquals(false, responseTimeMapBoundingBoxesResult2.equals(responseTimeMapBoundingBoxesResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = new OASResponseTimeMapBoundingBoxesResul();

        System.assertEquals(responseTimeMapBoundingBoxesResult1.hashCode(), responseTimeMapBoundingBoxesResult1.hashCode());
        System.assertEquals(responseTimeMapBoundingBoxesResult2.hashCode(), responseTimeMapBoundingBoxesResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult1 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult2 = OASResponseTimeMapBoundingBoxesResul.getExample();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult3 = new OASResponseTimeMapBoundingBoxesResul();
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult4 = new OASResponseTimeMapBoundingBoxesResul();

        System.assert(responseTimeMapBoundingBoxesResult1.equals(responseTimeMapBoundingBoxesResult2));
        System.assert(responseTimeMapBoundingBoxesResult3.equals(responseTimeMapBoundingBoxesResult4));
        System.assertEquals(responseTimeMapBoundingBoxesResult1.hashCode(), responseTimeMapBoundingBoxesResult2.hashCode());
        System.assertEquals(responseTimeMapBoundingBoxesResult3.hashCode(), responseTimeMapBoundingBoxesResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult = new OASResponseTimeMapBoundingBoxesResul();
        Map<String, String> propertyMappings = responseTimeMapBoundingBoxesResult.getPropertyMappings();
        System.assertEquals('searchId', propertyMappings.get('search_id'));
        System.assertEquals('boundingBoxes', propertyMappings.get('bounding_boxes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeMapBoundingBoxesResul responseTimeMapBoundingBoxesResult = new OASResponseTimeMapBoundingBoxesResul();
        System.assertEquals(new List<OASResponseBoundingBox>(), responseTimeMapBoundingBoxesResult.boundingBoxes);
        System.assertEquals(null, responseTimeMapBoundingBoxesResult.searchId);
        System.assertEquals(null, responseTimeMapBoundingBoxesResult.properties);
    }
}
