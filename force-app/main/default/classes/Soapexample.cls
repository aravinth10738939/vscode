global class Soapexample {

    webservice static account getaccount(String actid){
        Account act=[select id,name from account where id =:actId];
        return act;
    }
}