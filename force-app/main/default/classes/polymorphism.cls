public class polymorphism {

    public void sum(integer a, integer b){
        integer res=a+b;
        System.debug('Result is ' + res);
    }
    
    public void sum(string a, string b){
        string res=a+b;
        System.debug('Result is ' + res);
    }
}