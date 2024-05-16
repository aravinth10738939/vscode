trigger campaigntrigger on Campaign (before insert,before update,before delete, after insert, after update,after delete,after undelete) {
if(trigger.isdelete && trigger.isafter){
Campaignarchivetrigger.insertcampaignarchive(trigger.old);
}
}