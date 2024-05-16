public class Singlemail {
    public void mails(){
        list<messaging.singleemailmessage> mail = new  list<messaging.singleemailmessage>();
        list<string> ids= new list<string>();
        ids.add('m.aravinth19032002@gmail.com');
        messaging.singleemailmessage ms = new messaging.singleemailmessage();
        ms.settoaddresses(ids);
        ms.setsubject('Subject of your Email');
        ms.setplaintextbody('content of your mail');
        mail.add(ms);
        messaging.sendemail(mail);
    }

}