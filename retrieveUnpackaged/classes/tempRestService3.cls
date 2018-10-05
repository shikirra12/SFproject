@RestResource(urlMapping='/v3/tempConversion/*')
global class tempRestService3 {
    
    @HttpPost
    global static List<double> getCTemp(List<double> temperatures, string type){
        List<double> newTemps = new List<double>();
        for(Double temperature: temperatures){
            double convertedTemp;
        	if(type == null || type == 'f' || type != 'c'){
            	convertedTemp = tempConversion.f2C(temperature);
        	} else if(type == 'c') {
            	convertedTemp = tempConversion.c2F(temperature);
        	}
            newTemps.add(convertedTemp);
        }
        return newTemps;
	}
}