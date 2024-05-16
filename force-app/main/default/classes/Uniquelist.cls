public class Uniquelist {
    public void numbers(){
        list<integer> lists = new list<integer>();
        lists.add(1);
        lists.add(2);
        lists.add(3);
        lists.add(4);
        lists.add(5);
        lists.add(1);
        set<integer> value = new set<integer>(lists);
        System.debug('Unique elements are ..'+ value);        
        set<integer> value1 = new set<integer>();
        value1.addall(lists);
        System.debug('Unique elements are ..'+ value1);        
        set<integer> value2 = new set<integer>();
        for(integer i : lists){
            value2.add(i);
        }
        System.debug('Unique elements are ..'+ value2);          
    }
}