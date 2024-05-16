public class MerchandiseUpdate implements Database.Batchable<sobject> {
    integer count=0;
     public Database.querylocator start(Database.BatchableContext bc){
        string query='select id,name,Merchandise_Price__c from Merchandise__c';
        return Database.getquerylocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<Merchandise__c> merlist){
        count++;
        for(Merchandise__c m : merlist){
            
            m.Merchandise_Price__c=100;
            
        }
        update merlist;
    }
    
    public void finish(Database.BatchableContext bc){
        system.debug(count);
    }
}