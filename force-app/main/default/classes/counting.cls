public class counting {
    public static void related(list<Child__c> chlist ){         
       list<Parent__c> pa = new list<Parent__C>();
        for(Child__c child: chlist){
            id i = child.Parent__C;
            Parent__C p = [select id,(select id from childs__r) from Parent__c where id=:i];
            list<Child__c> li=p.childs__r;
            p.Child_Record_Count__c=li.size();
            pa.add(p);
            update pa;
        }      
    } 
}





/*
 *  Child__c c = ch.get(0);
       id i = c.Parent__c;
     if(i!=null){
       Parent__c p = [select id,(select id from childs__r) from Parent__c where id=:i];
       list <child__c> li = p.childs__r;
       p.Child_Record_Count__c= li.size();
       update p;
                }
*/