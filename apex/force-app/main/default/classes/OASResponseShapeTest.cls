@isTest
private class OASResponseShapeTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = responseShape1;
        OASResponseShape responseShape3 = new OASResponseShape();
        OASResponseShape responseShape4 = responseShape3;

        System.assert(responseShape1.equals(responseShape2));
        System.assert(responseShape2.equals(responseShape1));
        System.assert(responseShape1.equals(responseShape1));
        System.assert(responseShape3.equals(responseShape4));
        System.assert(responseShape4.equals(responseShape3));
        System.assert(responseShape3.equals(responseShape3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = OASResponseShape.getExample();
        OASResponseShape responseShape3 = new OASResponseShape();
        OASResponseShape responseShape4 = new OASResponseShape();

        System.assert(responseShape1.equals(responseShape2));
        System.assert(responseShape2.equals(responseShape1));
        System.assert(responseShape3.equals(responseShape4));
        System.assert(responseShape4.equals(responseShape3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = new OASResponseShape();

        System.assertEquals(false, responseShape1.equals('foo'));
        System.assertEquals(false, responseShape2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = new OASResponseShape();
        OASResponseShape responseShape3;

        System.assertEquals(false, responseShape1.equals(responseShape3));
        System.assertEquals(false, responseShape2.equals(responseShape3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = new OASResponseShape();

        System.assertEquals(responseShape1.hashCode(), responseShape1.hashCode());
        System.assertEquals(responseShape2.hashCode(), responseShape2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseShape responseShape1 = OASResponseShape.getExample();
        OASResponseShape responseShape2 = OASResponseShape.getExample();
        OASResponseShape responseShape3 = new OASResponseShape();
        OASResponseShape responseShape4 = new OASResponseShape();

        System.assert(responseShape1.equals(responseShape2));
        System.assert(responseShape3.equals(responseShape4));
        System.assertEquals(responseShape1.hashCode(), responseShape2.hashCode());
        System.assertEquals(responseShape3.hashCode(), responseShape4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseShape responseShape = new OASResponseShape();
        System.assertEquals(new List<OASCoords>(), responseShape.shell);
        System.assertEquals(new List<List<OASCoords>>(), responseShape.holes);
    }
}
