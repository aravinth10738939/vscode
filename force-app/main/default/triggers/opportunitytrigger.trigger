trigger opportunitytrigger on Opportunity (before insert,before update,before delete, after insert, after update,after delete,after undelete) {
if(trigger.isupdate && trigger.isbefore){
Opportunitytrigger.updateopportunity(trigger.new, trigger.old);
}
}