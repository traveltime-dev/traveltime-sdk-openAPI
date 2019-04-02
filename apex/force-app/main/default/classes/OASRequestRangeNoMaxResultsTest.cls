@isTest
private class OASRequestRangeNoMaxResultsTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = requestRangeNoMaxResults1;
        OASRequestRangeNoMaxResults requestRangeNoMaxResults3 = new OASRequestRangeNoMaxResults();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults4 = requestRangeNoMaxResults3;

        System.assert(requestRangeNoMaxResults1.equals(requestRangeNoMaxResults2));
        System.assert(requestRangeNoMaxResults2.equals(requestRangeNoMaxResults1));
        System.assert(requestRangeNoMaxResults1.equals(requestRangeNoMaxResults1));
        System.assert(requestRangeNoMaxResults3.equals(requestRangeNoMaxResults4));
        System.assert(requestRangeNoMaxResults4.equals(requestRangeNoMaxResults3));
        System.assert(requestRangeNoMaxResults3.equals(requestRangeNoMaxResults3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults3 = new OASRequestRangeNoMaxResults();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults4 = new OASRequestRangeNoMaxResults();

        System.assert(requestRangeNoMaxResults1.equals(requestRangeNoMaxResults2));
        System.assert(requestRangeNoMaxResults2.equals(requestRangeNoMaxResults1));
        System.assert(requestRangeNoMaxResults3.equals(requestRangeNoMaxResults4));
        System.assert(requestRangeNoMaxResults4.equals(requestRangeNoMaxResults3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = new OASRequestRangeNoMaxResults();

        System.assertEquals(false, requestRangeNoMaxResults1.equals('foo'));
        System.assertEquals(false, requestRangeNoMaxResults2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = new OASRequestRangeNoMaxResults();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults3;

        System.assertEquals(false, requestRangeNoMaxResults1.equals(requestRangeNoMaxResults3));
        System.assertEquals(false, requestRangeNoMaxResults2.equals(requestRangeNoMaxResults3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = new OASRequestRangeNoMaxResults();

        System.assertEquals(requestRangeNoMaxResults1.hashCode(), requestRangeNoMaxResults1.hashCode());
        System.assertEquals(requestRangeNoMaxResults2.hashCode(), requestRangeNoMaxResults2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestRangeNoMaxResults requestRangeNoMaxResults1 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults2 = OASRequestRangeNoMaxResults.getExample();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults3 = new OASRequestRangeNoMaxResults();
        OASRequestRangeNoMaxResults requestRangeNoMaxResults4 = new OASRequestRangeNoMaxResults();

        System.assert(requestRangeNoMaxResults1.equals(requestRangeNoMaxResults2));
        System.assert(requestRangeNoMaxResults3.equals(requestRangeNoMaxResults4));
        System.assertEquals(requestRangeNoMaxResults1.hashCode(), requestRangeNoMaxResults2.hashCode());
        System.assertEquals(requestRangeNoMaxResults3.hashCode(), requestRangeNoMaxResults4.hashCode());
    }
}
