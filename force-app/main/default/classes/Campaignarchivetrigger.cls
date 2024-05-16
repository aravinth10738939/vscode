public class Campaignarchivetrigger {
    public static void insertcampaignarchive(list<Campaign> cam){
        CampaignArchieve__c ca;
        list<CampaignArchieve__c> li = new list<CampaignArchieve__c>();
        for(Campaign c:cam){
            ca=new CampaignArchieve__c(); 
            ca.Name=c.name;
            li.add(ca);
        }
        insert li;
    }
}