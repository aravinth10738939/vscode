public class Apexlist {
    
    public void list1(){
        
        List <string> list_name = new List<string>();
        list_name.add(' abc ');
        list_name.add(' def ');
        list_name.add(' ghi ');
        list_name.add(' jkl ');
        list_name.add(' mno ');
        
        System.debug(list_name);
    }
    
    public void list2(){
        
        List <string> list_name = new List<string>{' abc ',' def ',' ghi ',' jkl '};         
        System.debug(list_name);
    }

}