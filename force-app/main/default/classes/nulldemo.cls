public class nulldemo {

    public void cl(){
    try{
        demo d;
        d.sayhello();
    }
    catch(NullPointerException b){
        System.debug(' my name is...'+b.getMessage());
    }
    }
}