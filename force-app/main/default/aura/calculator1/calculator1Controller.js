({
	add : function(component, event, helper) {
		sessionStorage.setItem("test1", component.get("v.num1"));
        component.set("v.num1","");
                 
	},
        equal : function(component, event, helper) {
		       let num = Number(component.get("v.num1"));
               let val = Number(sessionStorage.getItem("test1"));
               component.set("v.res",val+num);
               component.set("v.num1","");
	},
    sub : function(component, event, helper) {
		sessionStorage.setItem("test1", component.get("v.num1"));
        component.set("v.num1","");      
                
	}
  
    
})