public class Demoexception extends Exception {

    public void divide(integer a,integer b){
        try{
            integer res=a/b;
        }Catch(MathException m){
            System.debug('Please enter valid input');
        }
    }
}