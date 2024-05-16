({
	handle : function(component, event, helper){
		
        let action = component.get("c.getname");
        action.setParams({AccountNumber : component.get("v.AccountNumber")});
        action.setCallback(this, function(a){
                       component.set("v.Name",a.getReturnValue());
                           });
        $A.enqueueAction(action);
	}
})