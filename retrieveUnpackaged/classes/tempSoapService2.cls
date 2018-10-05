global class tempSoapService2 {

    webservice static double getCTemp(double temperature, string type){
        double convertedTemp;
        	if(type == null || type == 'f' || type != 'c'){
            	convertedTemp = tempConversion.f2C(temperature);
        	} else if(type == 'c') {
            	convertedTemp = tempConversion.c2F(temperature);
        	}
        return convertedTemp;
	}
}