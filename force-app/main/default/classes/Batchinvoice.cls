public class Batchinvoice implements database.batchable<sobject>{
    
    public database.querylocator start(database.batchablecontext bc){
        string query='select id,name,Inoice_Close_Date__c from Invoice__c';
        return database.getquerylocator(query);
    }
    
    public void execute(database.batchablecontext bc, list<Invoice__c> li){
        list<Invoice__c> l=new list<Invoice__c>();
        for(Invoice__c i : li){
            i.Inoice_Close_Date__c=system.today();
            l.add(i);
        }
        update l;
    }
    
    public void finish(database.batchablecontext bc){
        
    }

}