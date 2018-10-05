global class tempSoapService {
	
    webservice static double getCTemp(double temperature){
  		double convertedTemp = tempConversion.f2C(temperature);
        return convertedTemp;
    }
}