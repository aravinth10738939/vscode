public class opportunitybatch implements Database.Batchable<sobject> {
    
    public Database.querylocator start(Database.BatchableContext bc){
        string query='select id,Amount from Opportunity';
        return Database.getquerylocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<Opportunity> li){
        for(Opportunity o : li){
            o.Amount=99;
        }
        update li;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}