public with sharing class PicklistUtilCls {
    public PicklistUtilCls() {

    }
    @AuraEnabled
    public static Map<String, String> retrieveValues(){


        Map<String, String> dummyValuesMap = new Map<String, String>();

        For(Contact contObj:[select id, name from Contact limit 10]){

            dummyValuesMap.put(contObj.id, contObj.Name);
        }
        return dummyValuesMap;
    }
}