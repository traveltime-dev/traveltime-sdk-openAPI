@isTest
private class OASResponseBoundingBoxTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = responseBoundingBox1;
        OASResponseBoundingBox responseBoundingBox3 = new OASResponseBoundingBox();
        OASResponseBoundingBox responseBoundingBox4 = responseBoundingBox3;

        System.assert(responseBoundingBox1.equals(responseBoundingBox2));
        System.assert(responseBoundingBox2.equals(responseBoundingBox1));
        System.assert(responseBoundingBox1.equals(responseBoundingBox1));
        System.assert(responseBoundingBox3.equals(responseBoundingBox4));
        System.assert(responseBoundingBox4.equals(responseBoundingBox3));
        System.assert(responseBoundingBox3.equals(responseBoundingBox3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox3 = new OASResponseBoundingBox();
        OASResponseBoundingBox responseBoundingBox4 = new OASResponseBoundingBox();

        System.assert(responseBoundingBox1.equals(responseBoundingBox2));
        System.assert(responseBoundingBox2.equals(responseBoundingBox1));
        System.assert(responseBoundingBox3.equals(responseBoundingBox4));
        System.assert(responseBoundingBox4.equals(responseBoundingBox3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = new OASResponseBoundingBox();

        System.assertEquals(false, responseBoundingBox1.equals('foo'));
        System.assertEquals(false, responseBoundingBox2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = new OASResponseBoundingBox();
        OASResponseBoundingBox responseBoundingBox3;

        System.assertEquals(false, responseBoundingBox1.equals(responseBoundingBox3));
        System.assertEquals(false, responseBoundingBox2.equals(responseBoundingBox3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = new OASResponseBoundingBox();

        System.assertEquals(responseBoundingBox1.hashCode(), responseBoundingBox1.hashCode());
        System.assertEquals(responseBoundingBox2.hashCode(), responseBoundingBox2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseBoundingBox responseBoundingBox1 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox2 = OASResponseBoundingBox.getExample();
        OASResponseBoundingBox responseBoundingBox3 = new OASResponseBoundingBox();
        OASResponseBoundingBox responseBoundingBox4 = new OASResponseBoundingBox();

        System.assert(responseBoundingBox1.equals(responseBoundingBox2));
        System.assert(responseBoundingBox3.equals(responseBoundingBox4));
        System.assertEquals(responseBoundingBox1.hashCode(), responseBoundingBox2.hashCode());
        System.assertEquals(responseBoundingBox3.hashCode(), responseBoundingBox4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseBoundingBox responseBoundingBox = new OASResponseBoundingBox();
        System.assertEquals(new List<OASResponseBox>(), responseBoundingBox.boxes);
        System.assertEquals(null, responseBoundingBox.envelope);
    }
}
