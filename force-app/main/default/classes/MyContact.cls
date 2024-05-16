public with sharing class MyContact {
public void Dsave() {
        upsert con;
    }
    Contact con;
    
    public MyContact(){
    ID i = apexpages.currentpage().getparameters().get('id');
    
    if(i == null){
    con = new Contact();
    }else{
       con=[select id,name from Contact where id=:i];
    }
    
    }
    public Contact getMYContact() {
        return con;
    }

}