({
    
    doInit : function(component, event, helper) {
        
        component.set("v.carTypes",['newcar1','newcar2','newcar3']);
    },
    seachClicked : function(component, event, helper) {
        
        
        helper.handleonSearchClick(component, event, helper)
    },    
    
    toggleButton: function(component, event, helper) {
        debugger;
    var currentValue=component.get("v.isnewAvailable");
    console.log('toggle executed');
    alert(currentValue);    
    if(currentValue){
            component.set("v.isnewAvailable","false");}
      else  {
            alert('from else');
            component.set("v.isnewAvailable","true");}
            
        
    
},
newvalueSelected: function(component, event, helper) {
    var catTypeid=component.find("carTypeList").get("v.value");
alert(catTypeid+'option selected');
},


    
})