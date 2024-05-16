public class contactdelete {
    public static void checkrelated(list<contact> con){
        contact c=con[0];
        if(c.AccountId!=null){
            throw new deleteException();
        }
    }
}