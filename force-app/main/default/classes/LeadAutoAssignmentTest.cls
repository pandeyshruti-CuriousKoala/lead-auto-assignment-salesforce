@isTest
private class LeadAutoAssignmentTest {
    @isTest
    public static void testLeadAssignment(){
        Lead Testlead = new Lead(
        	FirstName = 'Test',
        	LastName = 'User',
        	Company = 'TestCorp',
        	LeadSource = 'Partner Referral');
        
        Test.startTest();
        insert Testlead;
        Test.stopTest();
        
        Lead inserted = [Select OwnerId From Lead Where Id = :Testlead.Id];
        System.assertNotEquals(null, inserted.OwnerId, 'Lead owner is assigned');
    }

}