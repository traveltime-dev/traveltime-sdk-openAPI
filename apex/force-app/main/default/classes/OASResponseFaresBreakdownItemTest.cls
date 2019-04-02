@isTest
private class OASResponseFaresBreakdownItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = responseFaresBreakdownItem1;
        OASResponseFaresBreakdownItem responseFaresBreakdownItem3 = new OASResponseFaresBreakdownItem();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem4 = responseFaresBreakdownItem3;

        System.assert(responseFaresBreakdownItem1.equals(responseFaresBreakdownItem2));
        System.assert(responseFaresBreakdownItem2.equals(responseFaresBreakdownItem1));
        System.assert(responseFaresBreakdownItem1.equals(responseFaresBreakdownItem1));
        System.assert(responseFaresBreakdownItem3.equals(responseFaresBreakdownItem4));
        System.assert(responseFaresBreakdownItem4.equals(responseFaresBreakdownItem3));
        System.assert(responseFaresBreakdownItem3.equals(responseFaresBreakdownItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem3 = new OASResponseFaresBreakdownItem();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem4 = new OASResponseFaresBreakdownItem();

        System.assert(responseFaresBreakdownItem1.equals(responseFaresBreakdownItem2));
        System.assert(responseFaresBreakdownItem2.equals(responseFaresBreakdownItem1));
        System.assert(responseFaresBreakdownItem3.equals(responseFaresBreakdownItem4));
        System.assert(responseFaresBreakdownItem4.equals(responseFaresBreakdownItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = new OASResponseFaresBreakdownItem();

        System.assertEquals(false, responseFaresBreakdownItem1.equals('foo'));
        System.assertEquals(false, responseFaresBreakdownItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = new OASResponseFaresBreakdownItem();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem3;

        System.assertEquals(false, responseFaresBreakdownItem1.equals(responseFaresBreakdownItem3));
        System.assertEquals(false, responseFaresBreakdownItem2.equals(responseFaresBreakdownItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = new OASResponseFaresBreakdownItem();

        System.assertEquals(responseFaresBreakdownItem1.hashCode(), responseFaresBreakdownItem1.hashCode());
        System.assertEquals(responseFaresBreakdownItem2.hashCode(), responseFaresBreakdownItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem1 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem2 = OASResponseFaresBreakdownItem.getExample();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem3 = new OASResponseFaresBreakdownItem();
        OASResponseFaresBreakdownItem responseFaresBreakdownItem4 = new OASResponseFaresBreakdownItem();

        System.assert(responseFaresBreakdownItem1.equals(responseFaresBreakdownItem2));
        System.assert(responseFaresBreakdownItem3.equals(responseFaresBreakdownItem4));
        System.assertEquals(responseFaresBreakdownItem1.hashCode(), responseFaresBreakdownItem2.hashCode());
        System.assertEquals(responseFaresBreakdownItem3.hashCode(), responseFaresBreakdownItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem = new OASResponseFaresBreakdownItem();
        Map<String, String> propertyMappings = responseFaresBreakdownItem.getPropertyMappings();
        System.assertEquals('routePartIds', propertyMappings.get('route_part_ids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem = new OASResponseFaresBreakdownItem();
        System.assertEquals(new List<OASResponseTransportationMode>(), responseFaresBreakdownItem.modes);
        System.assertEquals(new List<Integer>(), responseFaresBreakdownItem.routePartIds);
        System.assertEquals(new List<OASResponseFareTicket>(), responseFaresBreakdownItem.tickets);
    }
}
