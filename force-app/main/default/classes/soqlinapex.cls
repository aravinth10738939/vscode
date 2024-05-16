public class soqlinapex {
    public void query(){
        list<account> li=[select id,name,(select id,name from contacts) from account];
        for(account a:li){
            system.debug(a.id+'  '+a.name+'   '+a.contacts);
        }
    }
    
    public void query1(){
        list<contact> li1=[select id,name,account.name from contact];
        for(contact c:li1){
            system.debug(c.id+c.name+c.account.name);
        }
    }
}