public class Mybatch implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query='select id,name from account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<account> act){
        for(account a:act){
            a.name=a.name+'Updated';
        }
        update act;
    }
    public void finish(Database.BatchableContext bc){
        Mybatch1 m = new Mybatch1();
        Database.executeBatch(m);
        
        Batchinvoice  b = new Batchinvoice();
        Database.executeBatch(b);
    }
}