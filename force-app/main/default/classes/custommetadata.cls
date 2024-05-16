public class custommetadata {

      public void getDatafromChS(){
        mycustommetadata__mdt ms = mycustommetadata__mdt.getInstance('triggeronoff');
        system.debug(ms.isActive__c);
        if(ms.isActive__c == true){
            system.debug('Call the trigger');
        }
        else {
            system.debug(' Dont Call the trigger');
        }
    }

}