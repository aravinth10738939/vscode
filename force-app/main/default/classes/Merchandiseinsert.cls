public class Merchandiseinsert {
    public static void merchandisebkup(map<id,Merchandise__c> mer){
       Merchandise_Arch__c ma;
        list<Merchandise_Arch__c> malist = new list<Merchandise_Arch__c>();
        set<id> li = mer.keyset();
        for(id l : li){
            Merchandise__c var=mer.get(l);
            ma=new Merchandise_Arch__c();
            ma.name=var.name;
            ma.Merchandise_arch_description__c = var.Description__c;
            ma.Merchandise_arch_stock__c = var.Merchandise_Stock__c;
            ma.Merchandise_arch_price__c = var.Merchandise_Price__c;
            malist.add(ma);
        }
        insert malist;
    }
}