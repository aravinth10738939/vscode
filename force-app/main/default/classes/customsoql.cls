public class customsoql {
    public void getmerchandise(){
        list<Merchandise__c> act= [select id,name,Merchandise_Stock__c,Merchandise_Price__c,Description__c from Merchandise__c];
        for(Merchandise__c a:act){
            system.debug('Id is = '+a.id+'Name is = '+a.name+'Stock is '+a.Merchandise_Stock__c+'Price is '+a.Merchandise_Price__c+'Description is '+a.Description__c);
        }
    }
}