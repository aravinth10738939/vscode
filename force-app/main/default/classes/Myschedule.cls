public class Myschedule implements schedulable{
    
    public void execute(schedulablecontext sc){
        Mybatch my = new Mybatch();
        Database.executeBatch(my);
    }

}