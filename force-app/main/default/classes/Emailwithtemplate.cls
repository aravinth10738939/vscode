public class Emailwithtemplate {
    public void mail(){
        list<Messaging.SingleemailMessage> mail = new list<Messaging.SingleemailMessage>();
        EmailTemplate temp=[select id from EmailTemplate where name='Our Template'];
        contact c = [select id from contact where name='dummy'];
        Messaging.SingleEmailMessage m= new Messaging.SingleEmailMessage();
        m.setTemplateId(temp.id);
        m.setTargetobjectId(c.id);
        mail.add(m);
        Messaging.sendEmail(mail);        
    }
}