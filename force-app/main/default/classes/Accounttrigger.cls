public class Accounttrigger {
    public static void checkaccount(list<Account> acc){
       
        for(account a:acc){
            if(a.Industry=='Education'){
                a.Ownership='Public';
                
            }
        }
    }
}