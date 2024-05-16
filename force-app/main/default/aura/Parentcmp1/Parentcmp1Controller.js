({
	handleevent : function(component, event, helper) {
		console.log(event.getParams("message"));
        component.set("v.childmsg",event.getParams("message"));
	}
})