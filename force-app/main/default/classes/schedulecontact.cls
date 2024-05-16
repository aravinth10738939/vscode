public class schedulecontact implements schedulable {
    
    public void execute(schedulablecontext sc){
        contactbatch c =new contactbatch();
        database.executebatch(c);
    }

}