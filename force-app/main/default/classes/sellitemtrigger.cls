public class sellitemtrigger {
    
    public static void selarch(list<Sellitem__c> se){
      list<sellitemarch__c> sa=new list<sellitemarch__c>();
        for(Sellitem__c s: se){
            sellitemarch__c sela = new sellitemarch__c();
            sela.name=s.name;
            sa.add(sela);
        }
        insert sa;
    }

}