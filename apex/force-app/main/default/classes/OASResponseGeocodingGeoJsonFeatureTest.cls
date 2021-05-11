@isTest
private class OASResponseGeocodingGeoJsonFeatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = responseGeocodingGeoJsonFeature1;
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature3 = new OASResponseGeocodingGeoJsonFeature();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature4 = responseGeocodingGeoJsonFeature3;

        System.assert(responseGeocodingGeoJsonFeature1.equals(responseGeocodingGeoJsonFeature2));
        System.assert(responseGeocodingGeoJsonFeature2.equals(responseGeocodingGeoJsonFeature1));
        System.assert(responseGeocodingGeoJsonFeature1.equals(responseGeocodingGeoJsonFeature1));
        System.assert(responseGeocodingGeoJsonFeature3.equals(responseGeocodingGeoJsonFeature4));
        System.assert(responseGeocodingGeoJsonFeature4.equals(responseGeocodingGeoJsonFeature3));
        System.assert(responseGeocodingGeoJsonFeature3.equals(responseGeocodingGeoJsonFeature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature3 = new OASResponseGeocodingGeoJsonFeature();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature4 = new OASResponseGeocodingGeoJsonFeature();

        System.assert(responseGeocodingGeoJsonFeature1.equals(responseGeocodingGeoJsonFeature2));
        System.assert(responseGeocodingGeoJsonFeature2.equals(responseGeocodingGeoJsonFeature1));
        System.assert(responseGeocodingGeoJsonFeature3.equals(responseGeocodingGeoJsonFeature4));
        System.assert(responseGeocodingGeoJsonFeature4.equals(responseGeocodingGeoJsonFeature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = new OASResponseGeocodingGeoJsonFeature();

        System.assertEquals(false, responseGeocodingGeoJsonFeature1.equals('foo'));
        System.assertEquals(false, responseGeocodingGeoJsonFeature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = new OASResponseGeocodingGeoJsonFeature();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature3;

        System.assertEquals(false, responseGeocodingGeoJsonFeature1.equals(responseGeocodingGeoJsonFeature3));
        System.assertEquals(false, responseGeocodingGeoJsonFeature2.equals(responseGeocodingGeoJsonFeature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = new OASResponseGeocodingGeoJsonFeature();

        System.assertEquals(responseGeocodingGeoJsonFeature1.hashCode(), responseGeocodingGeoJsonFeature1.hashCode());
        System.assertEquals(responseGeocodingGeoJsonFeature2.hashCode(), responseGeocodingGeoJsonFeature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature1 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature2 = OASResponseGeocodingGeoJsonFeature.getExample();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature3 = new OASResponseGeocodingGeoJsonFeature();
        OASResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature4 = new OASResponseGeocodingGeoJsonFeature();

        System.assert(responseGeocodingGeoJsonFeature1.equals(responseGeocodingGeoJsonFeature2));
        System.assert(responseGeocodingGeoJsonFeature3.equals(responseGeocodingGeoJsonFeature4));
        System.assertEquals(responseGeocodingGeoJsonFeature1.hashCode(), responseGeocodingGeoJsonFeature2.hashCode());
        System.assertEquals(responseGeocodingGeoJsonFeature3.hashCode(), responseGeocodingGeoJsonFeature4.hashCode());
    }
}
