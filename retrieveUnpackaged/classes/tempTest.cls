@IsTest
public class tempTest {
	
    static testmethod void correctCelsius(){
        tempConversion.f2C(212);
        System.assertEquals(100, 100);
    }
    
    static testmethod void correctFarenheit(){
        tempConversion.c2F(100);
        System.assertEquals(212, 212);
    }
    
    
}