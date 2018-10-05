@RestResource(urlMapping='/v2/tempConversion/*')
global class tempRestService2 {
    
    @HttpPost
    global static double getCTemp(double temperature, string type){
        double convertedTemp;
        	if(type == null || type == 'f' || type != 'c'){
            	convertedTemp = tempConversion.f2C(temperature);
        	} else if(type == 'c') {
            	convertedTemp = tempConversion.c2F(temperature);
        	}
        return convertedTemp;
	}
}