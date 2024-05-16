public class queryexc {
    public void test(){
        account li=[select name from account];
       system.debug(li.name );
    }
}