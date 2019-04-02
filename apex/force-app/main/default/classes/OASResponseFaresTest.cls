@isTest
private class OASResponseFaresTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = responseFares1;
        OASResponseFares responseFares3 = new OASResponseFares();
        OASResponseFares responseFares4 = responseFares3;

        System.assert(responseFares1.equals(responseFares2));
        System.assert(responseFares2.equals(responseFares1));
        System.assert(responseFares1.equals(responseFares1));
        System.assert(responseFares3.equals(responseFares4));
        System.assert(responseFares4.equals(responseFares3));
        System.assert(responseFares3.equals(responseFares3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = OASResponseFares.getExample();
        OASResponseFares responseFares3 = new OASResponseFares();
        OASResponseFares responseFares4 = new OASResponseFares();

        System.assert(responseFares1.equals(responseFares2));
        System.assert(responseFares2.equals(responseFares1));
        System.assert(responseFares3.equals(responseFares4));
        System.assert(responseFares4.equals(responseFares3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = new OASResponseFares();

        System.assertEquals(false, responseFares1.equals('foo'));
        System.assertEquals(false, responseFares2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = new OASResponseFares();
        OASResponseFares responseFares3;

        System.assertEquals(false, responseFares1.equals(responseFares3));
        System.assertEquals(false, responseFares2.equals(responseFares3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = new OASResponseFares();

        System.assertEquals(responseFares1.hashCode(), responseFares1.hashCode());
        System.assertEquals(responseFares2.hashCode(), responseFares2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseFares responseFares1 = OASResponseFares.getExample();
        OASResponseFares responseFares2 = OASResponseFares.getExample();
        OASResponseFares responseFares3 = new OASResponseFares();
        OASResponseFares responseFares4 = new OASResponseFares();

        System.assert(responseFares1.equals(responseFares2));
        System.assert(responseFares3.equals(responseFares4));
        System.assertEquals(responseFares1.hashCode(), responseFares2.hashCode());
        System.assertEquals(responseFares3.hashCode(), responseFares4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseFares responseFares = new OASResponseFares();
        Map<String, String> propertyMappings = responseFares.getPropertyMappings();
        System.assertEquals('ticketsTotal', propertyMappings.get('tickets_total'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseFares responseFares = new OASResponseFares();
        System.assertEquals(new List<OASResponseFaresBreakdownItem>(), responseFares.breakdown);
        System.assertEquals(new List<OASResponseFareTicket>(), responseFares.ticketsTotal);
    }
}
