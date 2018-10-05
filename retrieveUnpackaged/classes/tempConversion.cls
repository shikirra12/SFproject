global class tempConversion {
    
    global static double f2C(double temperature){
        double celsius = (temperature - 32 )/1.8;
        system.debug('Celsius: ' + celsius);
        return celsius;
    }
	
    global static double c2F(double temperature){
        double farenheit = (temperature * 1.8) + 32;
        system.debug('Farenheit: ' + farenheit);
        return farenheit;
    }
}