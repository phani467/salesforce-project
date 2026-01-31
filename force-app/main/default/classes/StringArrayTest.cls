public with sharing class StringArrayTest {
    public static List<string>  generateStringArray(Integer n) {
        List<string> listName = new List<string>();
        for(Integer i=0; i<n; ++i){

            listName.add('Test '+ i);
            system.System.debug(listName[i]);
                    }
system.System.debug(listName);
return listName;
    }
}