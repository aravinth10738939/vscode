public class methods {

    public void check(){
        list<integer> list1 = new list<integer>{1,2,3,4,5,6};
        list<integer> list2 = new list<integer>{1,2,3,4,5,6};
        System.debug(list1.equals(list2));
        system.debug(list1.contains(6));
        set<integer> value1 = new set<integer>{6,7,8,9,10};
        set<integer> value2 = new set<integer>{6,7,8,9,10};
        System.debug(value1.equals(value2));
        System.debug(value1.contains(8));
    }
}