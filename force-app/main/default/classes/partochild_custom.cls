public class partochild_custom {

    public void soqlquery(){
        list<Invoice__c> li=[select id,name,(select id,name from Sellitem__r) from Invoice__c];
        for(Invoice__c a:li){
            system.debug(a.id+''+a.name+''+a.Sellitem__r);
        }
    }
}