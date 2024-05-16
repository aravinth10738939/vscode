trigger Merchandisetri on Merchandise__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

if(trigger.isdelete && trigger.isafter){
Merchandiseinsert.merchandisebkup(trigger.oldmap);
}
}