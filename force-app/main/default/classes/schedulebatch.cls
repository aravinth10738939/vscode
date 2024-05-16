public class schedulebatch implements schedulable {
    
    public void execute(schedulablecontext sc){
        mybatch3 m=new mybatch3();
        database.executebatch(m);
    }

}