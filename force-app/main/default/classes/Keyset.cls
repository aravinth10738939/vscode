public class Keyset {

    public void maps(){
        map<integer,string> values = new map<integer,string>();
        values.put(1,'Aravinth');
        values.put(2,'Bajaj');
        values.put(3,'Car');
        values.put(4,'Drive');
        values.put(5,'Eat');
        
        for(integer val: values.keyset()){
            string s=values.get(val);
            System.debug(val+' '+s);
        }
        for(String val: values.values()){
            System.debug(val);
        }
    }
}