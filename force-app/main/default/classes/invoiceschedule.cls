public class invoiceschedule implements schedulable {
    
    public void execute(schedulablecontext sc){
        Batchinvoice ba = new Batchinvoice();
        database.executebatch(ba);
    }

}