public class Mybatch1 implements Database.Batchable<sObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query='select id,name from Merchandise__c';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<Merchandise__c> mer){
        for(Merchandise__c m : mer){
            m.Merchandise_Price__c=30;
        }
        update mer;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}