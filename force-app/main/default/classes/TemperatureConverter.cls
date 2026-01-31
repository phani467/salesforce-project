public with sharing class TemperatureConverter {
    
    
    public static  Decimal TemperatureConverter(decimal fh ) {
        Decimal cs =(fh-32)*5/9;
        return cs.setScale(2);


    }
}