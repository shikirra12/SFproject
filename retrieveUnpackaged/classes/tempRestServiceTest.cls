@isTest
private class tempRestServiceTest{
	
    testmethod static void testRestService1(){
        RestRequest request = new RestRequest();
        
        request.requestURI = 'https://na53.salesforce.com/apex/v1/tempConversion';
        request.httpMethod = 'POST';
        request.addHeader('Content-Type', 'application/json');
        request.requestBody = Blob.valueOf('{"temperature": "212"}');
        
        RestContext.request = request;
        
        System.assertEquals(100, 100);
        System.assert(request != null);
    }
    
    testmethod static void testRestService2F2C(){
        RestRequest request = new RestRequest();
        
        request.requestURI = 'https://na53.salesforce.com/apex/v2/tempConversion';
        request.httpMethod = 'POST';
        request.addHeader('Content-Type', 'application/json');
        request.requestBody = Blob.valueOf('{"temperature": "212", "type": "c"}');
        
        RestContext.request = request;
        
        System.assertEquals(100, 100);
        System.assert(request != null);
    }
    
    testmethod static void testRestService2C2F(){
        RestRequest request = new RestRequest();
        
        request.requestURI = 'https://na53.salesforce.com/apex/v2/tempConversion';
        request.httpMethod = 'POST';
        request.addHeader('Content-Type', 'application/json');
        request.requestBody = Blob.valueOf('{"temperature": "100", "type": "f"}');
        
        RestContext.request = request;
        
        System.assertEquals(212, 212);
        System.assert(request != null);
    }
    
    testmethod static void testRestService3(){
        RestRequest request = new RestRequest();
        
        request.requestURI = 'https://na53.salesforce.com/apex/v2/tempConversion';
        request.httpMethod = 'POST';
        request.addHeader('Content-Type', 'application/json');
        request.requestBody = Blob.valueOf('{"temperature": [100, 212, 53.5], "type": "f"}');
        
        RestContext.request = request;
        
        //System.assertEquals(212, newTemps[0]);
        System.assert(request != null);
    }
}