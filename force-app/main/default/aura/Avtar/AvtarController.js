({
    init:function(component, event, helper){
        var myBreadcrumbs =[
            {label:'Account', name:'objectName'},
            {label:'Record Name', name:'record'}
        ];
        component.set('v.myBreadcrumbs',myBreadcrumbs);
    },
    
    handleClick : function(component, event, helper) {
        alert("you clicked"+event.getSource().get('v.label'));
            },
    
    naviageToParentAccount : function(component, event, helper) {
event.preventDefault();
//custom navigation here

    },
    navigateToCase:function(component, event, helper) {
        event.preventDefault();
        //custom navigation here

    },
    naviagateTo: function(component, event, helper) {
        var name= event.getSource().get('v.name');
        //custom navigation here

    }
})