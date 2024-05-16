public class fakeresponsefuture implements httpcalloutmock{
    public httpresponse respond(Httprequest req){
        httpresponse res = new httpresponse();
        res.setHeader('Content-Type','application/json;charset=UTF-8');
        res.setBody('{"n":"Dog"}');
        res.setStatusCode(200);
        return res;
    }

}