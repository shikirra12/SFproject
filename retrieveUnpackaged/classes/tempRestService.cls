@RestResource(urlMapping= '/v1/tempConversion/*')
global class tempRestService {
    
	@HttpPost
    global static double getCTemp(double temperature){
  		double convertedTemp = tempConversion.f2C(temperature);
        return convertedTemp;
    }
}