public class exceptiondemo {
public void divide(integer a,integer b){
        try{
            
            integer res=a/b;
            System.debug(res);
            Demo d = new Demo();
            System.debug(d);
            d.sayhello();
            list<string> lists = new list<string>();
            lists.add('aravinth');
            System.debug(lists.get(0));
        }Catch(MathException m){
            System.debug('Please enter valid input');
        }catch(NullPointerException n){
            System.debug('Please dont do any operation with null');
        }catch(Exception e){
            System.debug('Server busy');
        }
    finally {
        System.debug('It will excecute in either of the case if the exception occurs or not');
    }
    }
}