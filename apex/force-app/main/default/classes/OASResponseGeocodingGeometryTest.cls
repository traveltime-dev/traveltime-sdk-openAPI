@isTest
private class OASResponseGeocodingGeometryTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = responseGeocodingGeometry1;
        OASResponseGeocodingGeometry responseGeocodingGeometry3 = new OASResponseGeocodingGeometry();
        OASResponseGeocodingGeometry responseGeocodingGeometry4 = responseGeocodingGeometry3;

        System.assert(responseGeocodingGeometry1.equals(responseGeocodingGeometry2));
        System.assert(responseGeocodingGeometry2.equals(responseGeocodingGeometry1));
        System.assert(responseGeocodingGeometry1.equals(responseGeocodingGeometry1));
        System.assert(responseGeocodingGeometry3.equals(responseGeocodingGeometry4));
        System.assert(responseGeocodingGeometry4.equals(responseGeocodingGeometry3));
        System.assert(responseGeocodingGeometry3.equals(responseGeocodingGeometry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry3 = new OASResponseGeocodingGeometry();
        OASResponseGeocodingGeometry responseGeocodingGeometry4 = new OASResponseGeocodingGeometry();

        System.assert(responseGeocodingGeometry1.equals(responseGeocodingGeometry2));
        System.assert(responseGeocodingGeometry2.equals(responseGeocodingGeometry1));
        System.assert(responseGeocodingGeometry3.equals(responseGeocodingGeometry4));
        System.assert(responseGeocodingGeometry4.equals(responseGeocodingGeometry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = new OASResponseGeocodingGeometry();

        System.assertEquals(false, responseGeocodingGeometry1.equals('foo'));
        System.assertEquals(false, responseGeocodingGeometry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = new OASResponseGeocodingGeometry();
        OASResponseGeocodingGeometry responseGeocodingGeometry3;

        System.assertEquals(false, responseGeocodingGeometry1.equals(responseGeocodingGeometry3));
        System.assertEquals(false, responseGeocodingGeometry2.equals(responseGeocodingGeometry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = new OASResponseGeocodingGeometry();

        System.assertEquals(responseGeocodingGeometry1.hashCode(), responseGeocodingGeometry1.hashCode());
        System.assertEquals(responseGeocodingGeometry2.hashCode(), responseGeocodingGeometry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseGeocodingGeometry responseGeocodingGeometry1 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry2 = OASResponseGeocodingGeometry.getExample();
        OASResponseGeocodingGeometry responseGeocodingGeometry3 = new OASResponseGeocodingGeometry();
        OASResponseGeocodingGeometry responseGeocodingGeometry4 = new OASResponseGeocodingGeometry();

        System.assert(responseGeocodingGeometry1.equals(responseGeocodingGeometry2));
        System.assert(responseGeocodingGeometry3.equals(responseGeocodingGeometry4));
        System.assertEquals(responseGeocodingGeometry1.hashCode(), responseGeocodingGeometry2.hashCode());
        System.assertEquals(responseGeocodingGeometry3.hashCode(), responseGeocodingGeometry4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseGeocodingGeometry responseGeocodingGeometry = new OASResponseGeocodingGeometry();
        Map<String, String> x-property-mappings = responseGeocodingGeometry.getx-property-mappings();
        System.assertEquals('r_type', x-property-mappings.get('type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseGeocodingGeometry responseGeocodingGeometry = new OASResponseGeocodingGeometry();
        System.assertEquals(new List<Double>(), responseGeocodingGeometry.coordinates);
        System.assertEquals(null, responseGeocodingGeometry.r_type);
    }
}
