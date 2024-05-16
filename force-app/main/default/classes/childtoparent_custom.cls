public class childtoparent_custom {
    public void soqlquery1(){
        list<Sellitem__c> li=[select id,name,Invoice__r.name from Sellitem__c];
        for(Sellitem__c c: li){
            System.debug(c.id+''+c.name+''+c.Invoice__r.name);
        }
    }

}