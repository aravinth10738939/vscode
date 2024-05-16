({
	handleClick : function(component, event, helper) {
		
        var evt = component.getEvent("childevent");
		evt.setParams({"Message" : "Welcome to Aura tutorials"+component.get("v.Email") });
		evt.fire();
        console.log("evnt fired");
	}
})