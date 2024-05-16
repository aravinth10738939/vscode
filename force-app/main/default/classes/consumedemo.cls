public class consumedemo {
   @future(callout=true)
    public static void consume(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST'); 
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        request.setBody('{"name":"Lion"}');
         response = http.send(request);
        if(response.getstatuscode()!=201){
            system.debug('Not expected  '+ response.getstatuscode() + response.getstatus());
        }else{
            system.debug(response.getBody());
        }
    }
}