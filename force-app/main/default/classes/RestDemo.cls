@RestResource(urlMapping='/myaccount/*')
global class RestDemo {

    @HttpGet
    global static List<Account> getmyaccount(){
        List<account> act = [select id,name from account];
        return act;
    }
    
    
    @HttpPost
    global static Id Createaccount(string nm){
        
        Account a=new Account();
        a.name=nm;
        insert a;
        return a.id;
    }
    
    @HttpDelete
    global static string deleteaccount(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string recordid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account ac=[select id from account where id=:recordid];
        delete ac;
        return 'deleted';
    }
}