@RestResource(URLMapping='/myservice/*')
global class webservices {
    
    @Httpget
    global static list<Account> getmethod(){
        list<Account> lis=[select id,name from Account];
        return lis;
    }
    
    @HttpPost
    global static id postmethod(string name){
        Account a = new Account();
        a.name=name;
        insert a;
        return a.id;
    }
    
    @HttpDelete
    global static void deletemethod(){
        RestRequest req=RestContext.request;
        id myid=req.requestURI.SubString(req.requestURI.LastIndexof('/')+1);
	    Account a=[select id,name from account where id=:myid];
        delete a;        
    }

}