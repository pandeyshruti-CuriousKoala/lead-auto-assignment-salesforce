public class LeadAssignmentHelper {
   public static Map<String, Id> getLeadAssignmentMapping(){
        Map<String, Id> LeadAssignmentmap = new Map<String, Id>();
        List<Lead_Assignment_Mapping__mdt> maps = [Select Lead_Source__c, User_Id__c From Lead_Assignment_Mapping__mdt];
        for (Lead_Assignment_Mapping__mdt record : maps){
            LeadAssignmentmap.put(record.Lead_Source__c, record.User_Id__c);
        }
        return LeadAssignmentmap;
    }

}