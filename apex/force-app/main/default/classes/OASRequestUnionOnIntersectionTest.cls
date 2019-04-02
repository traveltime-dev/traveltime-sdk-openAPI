@isTest
private class OASRequestUnionOnIntersectionTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = requestUnionOnIntersection1;
        OASRequestUnionOnIntersection requestUnionOnIntersection3 = new OASRequestUnionOnIntersection();
        OASRequestUnionOnIntersection requestUnionOnIntersection4 = requestUnionOnIntersection3;

        System.assert(requestUnionOnIntersection1.equals(requestUnionOnIntersection2));
        System.assert(requestUnionOnIntersection2.equals(requestUnionOnIntersection1));
        System.assert(requestUnionOnIntersection1.equals(requestUnionOnIntersection1));
        System.assert(requestUnionOnIntersection3.equals(requestUnionOnIntersection4));
        System.assert(requestUnionOnIntersection4.equals(requestUnionOnIntersection3));
        System.assert(requestUnionOnIntersection3.equals(requestUnionOnIntersection3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection3 = new OASRequestUnionOnIntersection();
        OASRequestUnionOnIntersection requestUnionOnIntersection4 = new OASRequestUnionOnIntersection();

        System.assert(requestUnionOnIntersection1.equals(requestUnionOnIntersection2));
        System.assert(requestUnionOnIntersection2.equals(requestUnionOnIntersection1));
        System.assert(requestUnionOnIntersection3.equals(requestUnionOnIntersection4));
        System.assert(requestUnionOnIntersection4.equals(requestUnionOnIntersection3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = new OASRequestUnionOnIntersection();

        System.assertEquals(false, requestUnionOnIntersection1.equals('foo'));
        System.assertEquals(false, requestUnionOnIntersection2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = new OASRequestUnionOnIntersection();
        OASRequestUnionOnIntersection requestUnionOnIntersection3;

        System.assertEquals(false, requestUnionOnIntersection1.equals(requestUnionOnIntersection3));
        System.assertEquals(false, requestUnionOnIntersection2.equals(requestUnionOnIntersection3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = new OASRequestUnionOnIntersection();

        System.assertEquals(requestUnionOnIntersection1.hashCode(), requestUnionOnIntersection1.hashCode());
        System.assertEquals(requestUnionOnIntersection2.hashCode(), requestUnionOnIntersection2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestUnionOnIntersection requestUnionOnIntersection1 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection2 = OASRequestUnionOnIntersection.getExample();
        OASRequestUnionOnIntersection requestUnionOnIntersection3 = new OASRequestUnionOnIntersection();
        OASRequestUnionOnIntersection requestUnionOnIntersection4 = new OASRequestUnionOnIntersection();

        System.assert(requestUnionOnIntersection1.equals(requestUnionOnIntersection2));
        System.assert(requestUnionOnIntersection3.equals(requestUnionOnIntersection4));
        System.assertEquals(requestUnionOnIntersection1.hashCode(), requestUnionOnIntersection2.hashCode());
        System.assertEquals(requestUnionOnIntersection3.hashCode(), requestUnionOnIntersection4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestUnionOnIntersection requestUnionOnIntersection = new OASRequestUnionOnIntersection();
        Map<String, String> propertyMappings = requestUnionOnIntersection.getPropertyMappings();
        System.assertEquals('searchIds', propertyMappings.get('search_ids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestUnionOnIntersection requestUnionOnIntersection = new OASRequestUnionOnIntersection();
        System.assertEquals(new List<String>(), requestUnionOnIntersection.searchIds);
        System.assertEquals(null, requestUnionOnIntersection.id);
    }
}
