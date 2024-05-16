({
	changecss : function(cmp, event) {
		var target = cmp.find("demo");
        $A.util.removeClass(target,'blue');
         $A.util.addClass(target,'red');
	}
})