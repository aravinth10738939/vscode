public class Bikespeed {
    public void speed(integer a){
        try{
            if(a>100){
                throw new AravinthException();
            }
            else{
                System.debug('You are at good speed');
            }
        }catch(AravinthException ar){
            System.debug('PLease reduce your speed...');
        }
    }
}