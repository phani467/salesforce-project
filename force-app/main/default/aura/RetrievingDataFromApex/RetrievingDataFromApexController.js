({
    getString: function(component, event, helper) {
    var action= component.get("c.getStringArray");
    action.setCallback(this,function(Response){

        var state= Response.getState();
        if(state=="SUCCESS"){
            var stringItems=Response.getReturnValue(); 
            component.set("v.favoritecolors",stringItems);
        }
    });
                    $A.enqueueAction(action);
}

})