public class exceptionassignment {

    public void salary(integer a,integer b){
        try{
            integer res=a/b;
            System.debug('This shows no mathException...  '+ res);
            integer c=1;
            integer d=c*10;
            system.debug(d);
            list<integer> values = new list<integer>{1,2,3};
            System.debug(values.get(1));
        }catch(MathException m){
            System.debug('This is MAthException');
        }catch(NullPointerException n){
            System.debug('This is nullpointerException');
        }catch(Exception e){
              System.debug('This is Exception');  
         }
    }
}