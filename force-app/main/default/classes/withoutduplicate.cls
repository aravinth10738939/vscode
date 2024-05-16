public class withoutduplicate {
    public void trial(){
    list<integer> values = new list<integer>();
    values.add(1);
    values.add(2);
    values.add(3);
    values.add(4);
    values.add(5);
    values.add(2);
    System.debug(values);    
    set<integer> sets = new set<integer>();
    sets.addall(values);
    System.debug(sets);
     
    System.debug(values);
    set<integer> sets1 = new set<integer>(values);
    System.debug(sets1);
        
    System.debug(values);
    set<integer> sets2 = new set<integer>();
        for( integer i : values ){
            sets2.add(i);
        }
    System.debug(sets2); 
}
}