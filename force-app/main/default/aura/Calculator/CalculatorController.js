({
handleClick : function(component, event, helper) {
 
    var firstNumber = component.get("v.fnumber");
    var secondNumber = component.get("v.snumber");
    var action = component.get("c.calculateValues");

    
    action.setParams({"fnumber":firstNumber,"snumber":secondNumber});

    action.setCallback(this, function(response){
    
        var state = response.getState();
        var valueFromResp = response.getReturnValue();

        if(state === "SUCCESS"){
         
            component.set("v.totals", response.getReturnValue());
        }
    });
    $A.enqueueAction(action);

    

}
})