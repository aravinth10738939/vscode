trigger seltri on Sellitem__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
   
   if(trigger.isdelete && trigger.isafter){
   sellitemtrigger.selarch(trigger.old);
   }
}