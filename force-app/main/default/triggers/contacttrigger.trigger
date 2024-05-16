trigger contacttrigger on Contact (before insert,before update,before delete, after insert, after update,after delete,after undelete) {
if(trigger.isdelete && trigger.isbefore){
contactdelete.checkrelated(trigger.old);
}
}