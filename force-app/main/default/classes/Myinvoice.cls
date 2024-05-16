public with sharing class Myinvoice {

    public void plsave() {
        upsert inv;
    }

Invoice__c inv;
public Myinvoice(){
    
    id i=apexpages.currentpage().getparameters().get('Id');
    if(i==null){
       inv=new Invoice__c();
    }
    else{
        inv=[select id,name from Invoice__c where id=:i];
    }
}
    public Invoice__c getMyinvoice() {
        return inv;
    }

}