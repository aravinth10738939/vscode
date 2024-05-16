public class Calc {

    integer a=10;
    integer b=10;
    integer res;
    public void add(){
        res=a+b;
        System.debug('Sum of a + b = '+res);
    }
    public void sub(){
        res=a-b;
        System.debug('Subtraction of a - b = '+res);
    }
    public void mul(){
        res=a*b;
        System.debug('Multiplication of a * b = '+res);
    }
    public void div(){
        res=a/b;
        System.debug('Division of a / b = '+res);
    }
}