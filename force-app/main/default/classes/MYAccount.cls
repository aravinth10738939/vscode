public with sharing class MYAccount {

    public PageReference Dosave() {
        upsert act;
        return new PageReference('https://www.google.com?q=Aravinth');
    }

    Account act;
    
    public MyAccount(){
    ID i = apexpages.currentpage().getparameters().get('id');
    
    if(i == null){
    act = new Account();
    }else{
       act=[select id,name from Account where id=:i];
    }
    
    }
    public Account getMYAccount() {
        return act;
    }    
    
}