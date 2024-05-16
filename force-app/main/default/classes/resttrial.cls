@RestResource(urlmapping='/mytrial/*')
global class resttrial {
    @httpget
    global static list<account> showrecords(){
        list<account> li =[select id,name from account];
        return li;
    }
    
    @httppost
    global static void insertrecord(string name){
        account a=new account();
        a.name=name;
        insert a;
    }
    
    @httpdelete
    global static void deleterecord(){
        restrequest req=restcontext.request;
        string idd=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        list<account> li=[select id,name from account where id=:idd];
        delete li;
    }

}