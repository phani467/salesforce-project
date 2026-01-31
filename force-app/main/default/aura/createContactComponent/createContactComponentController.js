({
	handleClick : function(component, event, helper) {
        
        
        var action = component.get("c.createContact");
        
        action.setParams({"contObj":component.get("v.contactObj")});
        action.setCallback(this, function(response){
            component.set("v.contactId", response.getRetrunValue());
            
            
            
            
            
            
        });
    $A.enqueueAction(action);
		
	}
})