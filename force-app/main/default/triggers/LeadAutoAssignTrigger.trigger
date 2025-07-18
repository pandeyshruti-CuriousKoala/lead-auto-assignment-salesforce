trigger LeadAutoAssignTrigger on Lead (before insert, before update) {
    If(Trigger.isBefore){
        If(Trigger.isInsert || Trigger.isUpdate){
            Map<String, Id> mapping = LeadAssignmentHelper.getLeadAssignmentMapping();
            
            for(Lead leads : Trigger.new){
                if(mapping.containsKey(leads.LeadSource)){
                    leads.OwnerId = mapping.get(leads.LeadSource);
                }
            }
        }
    }

}