public class AttributeTypes {

    Private final String[] arrayItems;
    @AuraEnabled
    public static List<string> getStringArray(){
        String[] arrayItems= new String[]{'red','Green','blue'};
        return arrayItems;
    }


}