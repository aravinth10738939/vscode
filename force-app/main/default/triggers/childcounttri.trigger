trigger childcounttri on Child__C (before insert, after insert, before update, after update, before delete, after delete, after undelete){
if(trigger.isinsert && trigger.isafter){
counting.related(trigger.new);
}
if(trigger.isdelete && trigger.isafter){
counting.related(trigger.old);
}
}