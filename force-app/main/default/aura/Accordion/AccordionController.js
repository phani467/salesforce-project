({
	handleShowActiveScectionName : function(component, event, helper) {
		alert(component.find("accordion").get('v.activeSectionName'));
		
	},
    handleActiceSectionC:function(component, event, helper){
	
		component.find("accordion").set('v.activeSectionName','C');
}
})