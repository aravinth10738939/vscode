public class Soqldemo {
    public void getaccount(){
	list<account> act=[select id,name from account];
        for(account a: act){
            system.debug('The id is.. '+ a.id+'The name is...'+a.name);
        }
    }
}