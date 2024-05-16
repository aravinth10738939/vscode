public class Collectionlist {

    public void lists(){
        List<string> name = new List<string>();
        name.add('Aravinth');
        name.add('Abhisek');
        name.add('Vishwa');
        name.add('Aravinth');
        System.debug('The Names are...'+name);
        System.debug(name.get(2));
        name.set(0,'arun');
        System.debug(name.isEmpty());
        for(string n: name){
            System.debug(n);
        }
        System.debug(name.contains('arun'));
        name.addAll(name);
        System.debug(name);
        System.debug(name.size());
    }
}