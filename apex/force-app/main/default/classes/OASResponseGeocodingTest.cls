@isTest
private class OASResponseGeocodingTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = responseGeocoding1;
        OASResponseGeocoding responseGeocoding3 = new OASResponseGeocoding();
        OASResponseGeocoding responseGeocoding4 = responseGeocoding3;

        System.assert(responseGeocoding1.equals(responseGeocoding2));
        System.assert(responseGeocoding2.equals(responseGeocoding1));
        System.assert(responseGeocoding1.equals(responseGeocoding1));
        System.assert(responseGeocoding3.equals(responseGeocoding4));
        System.assert(responseGeocoding4.equals(responseGeocoding3));
        System.assert(responseGeocoding3.equals(responseGeocoding3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding3 = new OASResponseGeocoding();
        OASResponseGeocoding responseGeocoding4 = new OASResponseGeocoding();

        System.assert(responseGeocoding1.equals(responseGeocoding2));
        System.assert(responseGeocoding2.equals(responseGeocoding1));
        System.assert(responseGeocoding3.equals(responseGeocoding4));
        System.assert(responseGeocoding4.equals(responseGeocoding3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = new OASResponseGeocoding();

        System.assertEquals(false, responseGeocoding1.equals('foo'));
        System.assertEquals(false, responseGeocoding2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = new OASResponseGeocoding();
        OASResponseGeocoding responseGeocoding3;

        System.assertEquals(false, responseGeocoding1.equals(responseGeocoding3));
        System.assertEquals(false, responseGeocoding2.equals(responseGeocoding3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = new OASResponseGeocoding();

        System.assertEquals(responseGeocoding1.hashCode(), responseGeocoding1.hashCode());
        System.assertEquals(responseGeocoding2.hashCode(), responseGeocoding2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseGeocoding responseGeocoding1 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding2 = OASResponseGeocoding.getExample();
        OASResponseGeocoding responseGeocoding3 = new OASResponseGeocoding();
        OASResponseGeocoding responseGeocoding4 = new OASResponseGeocoding();

        System.assert(responseGeocoding1.equals(responseGeocoding2));
        System.assert(responseGeocoding3.equals(responseGeocoding4));
        System.assertEquals(responseGeocoding1.hashCode(), responseGeocoding2.hashCode());
        System.assertEquals(responseGeocoding3.hashCode(), responseGeocoding4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseGeocoding responseGeocoding = new OASResponseGeocoding();
        Map<String, String> propertyMappings = responseGeocoding.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseGeocoding responseGeocoding = new OASResponseGeocoding();
        System.assertEquals(new List<OASResponseGeocodingGeoJsonFeature>(), responseGeocoding.features);
        System.assertEquals(null, responseGeocoding.r_type);
    }
}
