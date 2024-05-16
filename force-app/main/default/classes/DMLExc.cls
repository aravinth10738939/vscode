public class DMLExc {
    public void demo(){
        try{
            Account a=new Account();
            insert a;
        }
        catch(DMLException d){
			System.debug(d.getMessage());
        }
    }

}