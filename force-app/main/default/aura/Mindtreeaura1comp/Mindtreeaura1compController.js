({
	calculate : function(component, event, helper) {
       
        helper.changecss(component, event);
		
        var amount = parseInt(component.get("v.Amount"));
        var tenure = parseInt(component.get("v.Tenure"));
        var duration = parseInt(component.get("v.Duration"));
        switch(duration){
            case 1:{
                component.set("v.return",amount*0.12*tenure);
                break;
            }
            case 2:{
                component.set("v.return",amount*0.24*tenure);
                break;
            }
            default:{
                component.set("v.return",amount*0.32*tenure);
                break;
            }
        }

	},
    
    validate1 : function(component, event, helper){
        let input=component.find("duration");
        let val = parseInt(input.get("v.value"));
        if(val > 24){
            input.set("v.errors",[{message:'Value cant be greater than 24'}]);
        }else{
            input.set("v.errors",[{message:''}]);
        }
    }
    

})