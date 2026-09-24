@isTest
private class OpportunityServiceTest {

    @isTest
    static void testGetAmount() {
        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = 1000
        );

        Decimal amount = OpportunityService.getAmount(opp);

        System.assertEquals(1000, amount);
    }
}