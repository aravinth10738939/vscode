public class sosldemo {
    public void searchtext(){
        list<list<sObject>> text = [find 'gene' in all fields returning account(id,name), contact(id,name)];
        list<Account> acc=text[0];
        list<contact> c=text[1];
        if(acc.size()>0){
            for(account a:acc){
                system.debug('Account Id is  '+a.id+'Account name is '+a.name);
            }
        }
        if(c.size()>0){
            for(contact cc:c){
                system.debug('Contact Id is  '+cc.id+'contact name is '+cc.name);
            }
        }
    }
}