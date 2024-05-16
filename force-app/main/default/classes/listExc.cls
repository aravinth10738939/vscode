public class listExc {
    public void trial(){
        try{
            list<integer> i=new list<integer>();
            i.add(10);
            i.add(100);
            i.add(500);
            System.debug(i.get(3));
        }
        catch(ListException l){
            System.debug(l.getMessage());
        }
    }
}