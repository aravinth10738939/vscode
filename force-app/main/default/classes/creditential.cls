public class creditential {
    public void share(){
        connectedapp__mdt ct = connectedapp__mdt.getInstance('Credentials');
        //connectedapp__mdt ct = connectedapp__mdt.getAll().values();
        system.debug(ct.Granttype__c);
        system.debug(ct.clientid__c);
        system.debug(ct.clientsecret__c);
        system.debug(ct.username__c);
        system.debug(ct.password__c);
    }
}