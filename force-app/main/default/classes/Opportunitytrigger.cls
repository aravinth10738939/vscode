public class Opportunitytrigger {
    public static void updateopportunity(list<opportunity> op, list<opportunity> oldd){
        Opportunity newRecord= op.get(0);
        for(opportunity o: oldd ){
               if(o.StageName=='Closed Won' && newRecord.StageName=='Closed Lost' ){
                newRecord.NextStep='Escalated to Manager';
                
            }
        } 
    }
}