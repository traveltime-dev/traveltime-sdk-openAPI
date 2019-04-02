@isTest
private class OASRequestRoutesTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = requestRoutes1;
        OASRequestRoutes requestRoutes3 = new OASRequestRoutes();
        OASRequestRoutes requestRoutes4 = requestRoutes3;

        System.assert(requestRoutes1.equals(requestRoutes2));
        System.assert(requestRoutes2.equals(requestRoutes1));
        System.assert(requestRoutes1.equals(requestRoutes1));
        System.assert(requestRoutes3.equals(requestRoutes4));
        System.assert(requestRoutes4.equals(requestRoutes3));
        System.assert(requestRoutes3.equals(requestRoutes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes3 = new OASRequestRoutes();
        OASRequestRoutes requestRoutes4 = new OASRequestRoutes();

        System.assert(requestRoutes1.equals(requestRoutes2));
        System.assert(requestRoutes2.equals(requestRoutes1));
        System.assert(requestRoutes3.equals(requestRoutes4));
        System.assert(requestRoutes4.equals(requestRoutes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = new OASRequestRoutes();

        System.assertEquals(false, requestRoutes1.equals('foo'));
        System.assertEquals(false, requestRoutes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = new OASRequestRoutes();
        OASRequestRoutes requestRoutes3;

        System.assertEquals(false, requestRoutes1.equals(requestRoutes3));
        System.assertEquals(false, requestRoutes2.equals(requestRoutes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = new OASRequestRoutes();

        System.assertEquals(requestRoutes1.hashCode(), requestRoutes1.hashCode());
        System.assertEquals(requestRoutes2.hashCode(), requestRoutes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestRoutes requestRoutes1 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes2 = OASRequestRoutes.getExample();
        OASRequestRoutes requestRoutes3 = new OASRequestRoutes();
        OASRequestRoutes requestRoutes4 = new OASRequestRoutes();

        System.assert(requestRoutes1.equals(requestRoutes2));
        System.assert(requestRoutes3.equals(requestRoutes4));
        System.assertEquals(requestRoutes1.hashCode(), requestRoutes2.hashCode());
        System.assertEquals(requestRoutes3.hashCode(), requestRoutes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestRoutes requestRoutes = new OASRequestRoutes();
        Map<String, String> propertyMappings = requestRoutes.getPropertyMappings();
        System.assertEquals('departureSearches', propertyMappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', propertyMappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestRoutes requestRoutes = new OASRequestRoutes();
        System.assertEquals(new List<OASRequestLocation>(), requestRoutes.locations);
        System.assertEquals(new List<OASRequestRoutesDepartureSearch>(), requestRoutes.departureSearches);
        System.assertEquals(new List<OASRequestRoutesArrivalSearch>(), requestRoutes.arrivalSearches);
    }
}
