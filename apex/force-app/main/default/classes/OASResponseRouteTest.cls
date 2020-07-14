@isTest
private class OASResponseRouteTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = responseRoute1;
        OASResponseRoute responseRoute3 = new OASResponseRoute();
        OASResponseRoute responseRoute4 = responseRoute3;

        System.assert(responseRoute1.equals(responseRoute2));
        System.assert(responseRoute2.equals(responseRoute1));
        System.assert(responseRoute1.equals(responseRoute1));
        System.assert(responseRoute3.equals(responseRoute4));
        System.assert(responseRoute4.equals(responseRoute3));
        System.assert(responseRoute3.equals(responseRoute3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute3 = new OASResponseRoute();
        OASResponseRoute responseRoute4 = new OASResponseRoute();

        System.assert(responseRoute1.equals(responseRoute2));
        System.assert(responseRoute2.equals(responseRoute1));
        System.assert(responseRoute3.equals(responseRoute4));
        System.assert(responseRoute4.equals(responseRoute3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = new OASResponseRoute();

        System.assertEquals(false, responseRoute1.equals('foo'));
        System.assertEquals(false, responseRoute2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = new OASResponseRoute();
        OASResponseRoute responseRoute3;

        System.assertEquals(false, responseRoute1.equals(responseRoute3));
        System.assertEquals(false, responseRoute2.equals(responseRoute3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = new OASResponseRoute();

        System.assertEquals(responseRoute1.hashCode(), responseRoute1.hashCode());
        System.assertEquals(responseRoute2.hashCode(), responseRoute2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoute responseRoute1 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute2 = OASResponseRoute.getExample();
        OASResponseRoute responseRoute3 = new OASResponseRoute();
        OASResponseRoute responseRoute4 = new OASResponseRoute();

        System.assert(responseRoute1.equals(responseRoute2));
        System.assert(responseRoute3.equals(responseRoute4));
        System.assertEquals(responseRoute1.hashCode(), responseRoute2.hashCode());
        System.assertEquals(responseRoute3.hashCode(), responseRoute4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseRoute responseRoute = new OASResponseRoute();
        Map<String, String> x-property-mappings = responseRoute.getx-property-mappings();
        System.assertEquals('departureTime', x-property-mappings.get('departure_time'));
        System.assertEquals('arrivalTime', x-property-mappings.get('arrival_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseRoute responseRoute = new OASResponseRoute();
        System.assertEquals(new List<OASResponseRoutePart>(), responseRoute.parts);
        System.assertEquals(null, responseRoute.departureTime);
        System.assertEquals(null, responseRoute.arrivalTime);
    }
}
