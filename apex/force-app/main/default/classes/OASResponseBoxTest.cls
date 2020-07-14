@isTest
private class OASResponseBoxTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = responseBox1;
        OASResponseBox responseBox3 = new OASResponseBox();
        OASResponseBox responseBox4 = responseBox3;

        System.assert(responseBox1.equals(responseBox2));
        System.assert(responseBox2.equals(responseBox1));
        System.assert(responseBox1.equals(responseBox1));
        System.assert(responseBox3.equals(responseBox4));
        System.assert(responseBox4.equals(responseBox3));
        System.assert(responseBox3.equals(responseBox3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = OASResponseBox.getExample();
        OASResponseBox responseBox3 = new OASResponseBox();
        OASResponseBox responseBox4 = new OASResponseBox();

        System.assert(responseBox1.equals(responseBox2));
        System.assert(responseBox2.equals(responseBox1));
        System.assert(responseBox3.equals(responseBox4));
        System.assert(responseBox4.equals(responseBox3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = new OASResponseBox();

        System.assertEquals(false, responseBox1.equals('foo'));
        System.assertEquals(false, responseBox2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = new OASResponseBox();
        OASResponseBox responseBox3;

        System.assertEquals(false, responseBox1.equals(responseBox3));
        System.assertEquals(false, responseBox2.equals(responseBox3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = new OASResponseBox();

        System.assertEquals(responseBox1.hashCode(), responseBox1.hashCode());
        System.assertEquals(responseBox2.hashCode(), responseBox2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseBox responseBox1 = OASResponseBox.getExample();
        OASResponseBox responseBox2 = OASResponseBox.getExample();
        OASResponseBox responseBox3 = new OASResponseBox();
        OASResponseBox responseBox4 = new OASResponseBox();

        System.assert(responseBox1.equals(responseBox2));
        System.assert(responseBox3.equals(responseBox4));
        System.assertEquals(responseBox1.hashCode(), responseBox2.hashCode());
        System.assertEquals(responseBox3.hashCode(), responseBox4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseBox responseBox = new OASResponseBox();
        Map<String, String> x-property-mappings = responseBox.getx-property-mappings();
        System.assertEquals('minLat', x-property-mappings.get('min_lat'));
        System.assertEquals('maxLat', x-property-mappings.get('max_lat'));
        System.assertEquals('minLng', x-property-mappings.get('min_lng'));
        System.assertEquals('maxLng', x-property-mappings.get('max_lng'));
    }
}
