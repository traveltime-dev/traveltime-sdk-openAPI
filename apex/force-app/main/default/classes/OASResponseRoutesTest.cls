@isTest
private class OASResponseRoutesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = responseRoutes1;
        OASResponseRoutes responseRoutes3 = new OASResponseRoutes();
        OASResponseRoutes responseRoutes4 = responseRoutes3;

        System.assert(responseRoutes1.equals(responseRoutes2));
        System.assert(responseRoutes2.equals(responseRoutes1));
        System.assert(responseRoutes1.equals(responseRoutes1));
        System.assert(responseRoutes3.equals(responseRoutes4));
        System.assert(responseRoutes4.equals(responseRoutes3));
        System.assert(responseRoutes3.equals(responseRoutes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes3 = new OASResponseRoutes();
        OASResponseRoutes responseRoutes4 = new OASResponseRoutes();

        System.assert(responseRoutes1.equals(responseRoutes2));
        System.assert(responseRoutes2.equals(responseRoutes1));
        System.assert(responseRoutes3.equals(responseRoutes4));
        System.assert(responseRoutes4.equals(responseRoutes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = new OASResponseRoutes();

        System.assertEquals(false, responseRoutes1.equals('foo'));
        System.assertEquals(false, responseRoutes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = new OASResponseRoutes();
        OASResponseRoutes responseRoutes3;

        System.assertEquals(false, responseRoutes1.equals(responseRoutes3));
        System.assertEquals(false, responseRoutes2.equals(responseRoutes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = new OASResponseRoutes();

        System.assertEquals(responseRoutes1.hashCode(), responseRoutes1.hashCode());
        System.assertEquals(responseRoutes2.hashCode(), responseRoutes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoutes responseRoutes1 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes2 = OASResponseRoutes.getExample();
        OASResponseRoutes responseRoutes3 = new OASResponseRoutes();
        OASResponseRoutes responseRoutes4 = new OASResponseRoutes();

        System.assert(responseRoutes1.equals(responseRoutes2));
        System.assert(responseRoutes3.equals(responseRoutes4));
        System.assertEquals(responseRoutes1.hashCode(), responseRoutes2.hashCode());
        System.assertEquals(responseRoutes3.hashCode(), responseRoutes4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseRoutes responseRoutes = new OASResponseRoutes();
        System.assertEquals(new List<OASResponseRoutesResult>(), responseRoutes.results);
    }
}
