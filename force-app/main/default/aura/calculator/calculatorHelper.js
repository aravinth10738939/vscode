({
	helperMethod1 : function(component) {
		var val1 = parseInt(component.get("v.value1"));
         var val2 = parseInt(component.get("v.value2"));
         var res = val1 + val2;
         component.set("v.result",res);
        
        
	},
    helperMethod2 : function(component) {
		var val1 = parseInt(component.get("v.value1"));
         var val2 = parseInt(component.get("v.value2"));
         var res = val1 - val2;
         component.set("v.result",res);
        
        console.log(component);
    }
})