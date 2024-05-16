public class contactbatch implements database.batchable<sobject> {

    public database.querylocator start(database.batchablecontext bc){
        string query = ' select id,MobilePhone from contact';
        return database.getquerylocator(query);
    }
    
    public void execute(database.batchablecontext bc, list<contact> li){
        for(contact con : li){
            con.MobilePhone=con.MobilePhone+'0';
            
        }
        update li;
        
    }
    
    public void finish(database.batchablecontext bc){
        
    }
}