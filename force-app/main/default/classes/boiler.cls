public class boiler {
    public void heat(integer speed){
        try{
            if(speed>50){
                throw new BoilerException();
            }
            else{
                System.debug('Boiling');
                 }
        }catch(BoilerException b){
                        System.debug('Speed resetted to 0');
        }
    }
}