public class futuremethod {
@future
    public static void a1(){
        system.debug('From class A');
        system.enqueuejob(new B());
    }
}