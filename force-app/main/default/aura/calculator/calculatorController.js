({
	add : function(component, event, helper) {
		 helper.helperMethod1(component);
         console.log(component);
	},
    sub : function(component, event, helper) {
		 helper.helperMethod2(component);
    },
    validate1 : function(component, event, helper){
        let input=component.find("amount");
        let val = parseInt(input.get("v.value"));
        if(val > 1000){
            input.set("v.errors",[{message:'Amount cant be greater than 1000'}]);
        }else{
            input.set("v.errors",[{message:''}]);
        }
    }
	   
})