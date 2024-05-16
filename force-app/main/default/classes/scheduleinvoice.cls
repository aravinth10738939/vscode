public class scheduleinvoice implements schedulable{
    public void execute(schedulablecontext sc){
        Batchinvoice b =new Batchinvoice();
        Database.executebatch(b);
    }

}