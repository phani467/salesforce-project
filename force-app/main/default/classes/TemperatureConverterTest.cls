@istest
public class TemperatureConverterTest {
    @istest static void testWarmTemp(){
        Decimal celsius = TemperatureConverter.TemperatureConverter(70);
        system.assertEquals(21.1, celsius, 'Conversion didn not happen as expected');
    }
    @isTest static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.TemperatureConverter(32);
        System.assertEquals(0,celsius,'Freezing point conversion failed');
    }
}