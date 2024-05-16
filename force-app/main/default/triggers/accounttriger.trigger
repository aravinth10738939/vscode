trigger accounttriger on Account (before insert) {
if(trigger.isinsert && trigger.isbefore){
Accounttrigger.checkaccount(trigger.new);
}
}