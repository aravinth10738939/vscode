public class mybatch3 implements database.batchable<sobject>{
    
    public database.querylocator start(database.batchablecontext bc){
        string query='select id, name from account';
        return database.getquerylocator(query);
    }
    
    public void execute(database.batchablecontext bc,list<account> a){
        for(account acc:a){
            acc.name=acc.name+'1';
           
        }
        update a;
    }
    
    public void finish(database.batchablecontext bc){
        
    }

}