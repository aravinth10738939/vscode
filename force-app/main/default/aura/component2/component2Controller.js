({
	handleApplicationEvent : function(component, event, helper) {
		var message = event.getParams("message");

        
        component.set("v.messageFromEvent", message);
        var numEventsHandled = parseInt(component.get("v.numEvents")) + 1;
        component.set("v.numEvents", numEventsHandled);
	}
})