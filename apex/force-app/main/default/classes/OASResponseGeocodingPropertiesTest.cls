@isTest
private class OASResponseGeocodingPropertiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = responseGeocodingProperties1;
        OASResponseGeocodingProperties responseGeocodingProperties3 = new OASResponseGeocodingProperties();
        OASResponseGeocodingProperties responseGeocodingProperties4 = responseGeocodingProperties3;

        System.assert(responseGeocodingProperties1.equals(responseGeocodingProperties2));
        System.assert(responseGeocodingProperties2.equals(responseGeocodingProperties1));
        System.assert(responseGeocodingProperties1.equals(responseGeocodingProperties1));
        System.assert(responseGeocodingProperties3.equals(responseGeocodingProperties4));
        System.assert(responseGeocodingProperties4.equals(responseGeocodingProperties3));
        System.assert(responseGeocodingProperties3.equals(responseGeocodingProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties3 = new OASResponseGeocodingProperties();
        OASResponseGeocodingProperties responseGeocodingProperties4 = new OASResponseGeocodingProperties();

        System.assert(responseGeocodingProperties1.equals(responseGeocodingProperties2));
        System.assert(responseGeocodingProperties2.equals(responseGeocodingProperties1));
        System.assert(responseGeocodingProperties3.equals(responseGeocodingProperties4));
        System.assert(responseGeocodingProperties4.equals(responseGeocodingProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = new OASResponseGeocodingProperties();

        System.assertEquals(false, responseGeocodingProperties1.equals('foo'));
        System.assertEquals(false, responseGeocodingProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = new OASResponseGeocodingProperties();
        OASResponseGeocodingProperties responseGeocodingProperties3;

        System.assertEquals(false, responseGeocodingProperties1.equals(responseGeocodingProperties3));
        System.assertEquals(false, responseGeocodingProperties2.equals(responseGeocodingProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = new OASResponseGeocodingProperties();

        System.assertEquals(responseGeocodingProperties1.hashCode(), responseGeocodingProperties1.hashCode());
        System.assertEquals(responseGeocodingProperties2.hashCode(), responseGeocodingProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseGeocodingProperties responseGeocodingProperties1 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties2 = OASResponseGeocodingProperties.getExample();
        OASResponseGeocodingProperties responseGeocodingProperties3 = new OASResponseGeocodingProperties();
        OASResponseGeocodingProperties responseGeocodingProperties4 = new OASResponseGeocodingProperties();

        System.assert(responseGeocodingProperties1.equals(responseGeocodingProperties2));
        System.assert(responseGeocodingProperties3.equals(responseGeocodingProperties4));
        System.assertEquals(responseGeocodingProperties1.hashCode(), responseGeocodingProperties2.hashCode());
        System.assertEquals(responseGeocodingProperties3.hashCode(), responseGeocodingProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseGeocodingProperties responseGeocodingProperties = new OASResponseGeocodingProperties();
        Map<String, String> propertyMappings = responseGeocodingProperties.getPropertyMappings();
        System.assertEquals('houseNumber', propertyMappings.get('house_number'));
        System.assertEquals('regionCode', propertyMappings.get('region_code'));
        System.assertEquals('countryCode', propertyMappings.get('country_code'));
    }
}
