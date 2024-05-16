public class B implements Queueable {
    public void execute(queueablecontext qc){
        system.debug('From class B');
        system.enqueuejob(new C());
            }
   
}